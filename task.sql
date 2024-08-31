USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN warehouseID INT
)
BEGIN
    SELECT
        Products.Name AS ProductName,
        ProductInventory.WarehouseAmount
    FROM 
        ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = warehouseID;
END //
DELIMITER ;
