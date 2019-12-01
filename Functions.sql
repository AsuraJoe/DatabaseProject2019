DELIMITER //
CREATE FUNCTION User_login(username VARCHAR(30), pass VARCHAR(45))
RETURNS boolean deterministic 
BEGIN 
DECLARE is_Moderator boolean;
select U.moderator into is_Moderator from USER AS U WHERE U.username = username and U.pass = pass;
Return is_Moderator;
END 
//DELIMITER ;