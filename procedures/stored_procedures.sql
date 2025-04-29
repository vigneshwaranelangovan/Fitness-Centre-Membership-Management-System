DELIMITER $$

CREATE PROCEDURE RenewSubscription(IN member INT)
BEGIN
    UPDATE Subscriptions
    SET start_date = CURRENT_DATE,
        end_date = DATE_ADD(CURRENT_DATE, INTERVAL 3 MONTH)
    WHERE subscription_id = (
        SELECT subscription_id FROM Members WHERE member_id = member
    );
END$$

DELIMITER ;
