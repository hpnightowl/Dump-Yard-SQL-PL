DELIMITER $$
CREATE PROCEDURE hp()
BEGIN
    DECLARE A INT;
    DECLARE B INT;
    DECLARE C INT;
    
    SET A = 10;
    SET B = 20;
    SET C = 30;
    
    IF A > B AND A >C THEN SELECT A;
    END IF;
    IF B > C AND B > A THEN SELECT B;
    END IF;
    IF C > A AND C > B THEN SELECT C;
    END IF;
END$$

DELIMITER ;

CALL hp();
