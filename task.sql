USE ShopDB; 

-- Create your stored procedure here
DELIMITER $$

-- Create the stored procedure
CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT
        Products.Name AS ProductName,
        ProductInventory.WarehouseAmount AS ProductAmount
    FROM
        ProductInventory
    INNER JOIN
        Products ON ProductInventory.ProductID = Products.ID
    WHERE
        ProductInventory.WarehouseID = WarehouseID;
END$$

DELIMITER ;
