USE ShopDB; 

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseID INT
)

BEGIN
    SELECT Products.name, ProductInventory.WarehouseAmount;
    FROM Products
    INNER JOIN ProductInventory
    ON ProductID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = WarehouseID;
END //
DELIMITER ;
