USE ShopDB; 

-- Create your stored procedure here
DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseID INT
)
BEGIN
    SELECT Name, WarehouseAmount FROM ProductInventory
    JOIN Products
    ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = WarehouseID;
END //

DELIMITER ;