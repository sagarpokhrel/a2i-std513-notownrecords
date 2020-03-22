DELIMITER $$
$$
CREATE TRIGGER `tr_update_before_delete_address`
BEFORE DELETE
	ON `addresses` FOR EACH ROW
	BEGIN
		UPDATE musicians SET address_id = null WHERE address_id = old.id;
	END
	$$
DELIMITER ;
