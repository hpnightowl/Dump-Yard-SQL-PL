DELIMITER $$
CREATE PROCEDURE hp()
BEGIN
    DECLARE R INT;
    DECLARE PI INT DEFAULT 3.14;
    DECLARE A INT;
    
    SET R = 3;
    label_loop: LOOP
        IF R > 7 THEN 
            LEAVE label_loop;
        END IF;
        SET A = PI*R*R;
        SELECT R,A;
        SET R = R + 1;
    END LOOP;
END$$

DELIMITER ;

CALL hp();
