USE ShopDB;

DELIMITER//

CREATE PROCEDURE get_warehouse_product_inventory( 
	IN IDFilter INT
)
BEGIN
    SELECT WarehouseAmount FROM ProductInventory WHERE WarehouseID=IDFilter;
END//

DELIMITER;
