DELIMITER $$

CREATE TRIGGER after_payment
AFTER INSERT ON Payments
FOR EACH ROW
BEGIN
    UPDATE Subscriptions
    SET amount = amount + NEW.amount
    WHERE subscription_id = (
        SELECT subscription_id FROM Members WHERE member_id = NEW.member_id
    );
END$$

DELIMITER ;
