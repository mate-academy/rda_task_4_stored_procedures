USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN Warehousenum INT)
BEGIN
    SELECT WarehouseAmount FROM ProductInventory
    WHERE WarehouseID = Warehousenum;
END //
DELIMITER ;
