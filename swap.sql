DELIMITER $$
CREATE PROCEDURE hp()
BEGIN
    DECLARE A INT;
    DECLARE B INT;
    DECLARE SWAP INT;
    
    SET A = 10;
    SET B = 20;
    
    SELECT A,B;
    
    SET SWAP = A;
    SET A = B;
    SET B = SWAP;
    
    SELECT A,B;

END$$

DELIMITER ;

CALL hp();
