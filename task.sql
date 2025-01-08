USE ShopDB;
DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT
        Name AS ProductName,
        WarehouseAmount AS Amount
    FROM
        Products;
END$$

DELIMITER ;

