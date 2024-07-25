USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( IN WarehouseID INT)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount FROM Products, ProductInventory
    INNER JOIN ProductInventory ON ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = WarehouseID;
END //
DELIMITER ;