USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN idWarehouse int
)
BEGIN
    SELECT Products.Name,WarehouseAmount
    FROM ProductInventory
    INNER JOIN Products
	ON ProductInventory.ProductID = Products.ID
    WHERE WarehouseID=idWarehouse;
END //
DELIMITER ;