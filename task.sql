USE ShopDB; 

-- Drop the procedure if it already exists
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER $$

-- Create the stored procedure
CREATE PROCEDURE get_warehouse_product_inventory (IN warehouse_id INT)
BEGIN
    SELECT
        p.Name AS ProductName,
        pi.WarehouseAmount AS ProductAmount
    FROM
        ProductInventory pi
    INNER JOIN
        Products p ON pi.ProductID = p.ID
    WHERE
        pi.WarehouseID = warehouse_id;
END $$

DELIMITER ;
