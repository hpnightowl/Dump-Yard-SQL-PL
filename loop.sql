DELIMITER $$
CREATE PROCEDURE hp()
BEGIN
    DECLARE H INT;
    SET H = 1;
    lable_loop: LOOP
        IF H > 10 THEN
            LEAVE lable_loop;
        ELSE
            SELECT H;
            SET H = H + 1;
        END IF;
    END LOOP;
END$$

DELIMITER ;

CALL hp();
