USE ShopDB;
DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT
        ProductID AS ProductName,
        WarehouseAmount AS Amount
    FROM
        ProductInventory;
END$$

DELIMITER ;

