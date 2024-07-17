USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseIDFilter INT
)
BEGIN
    SELECT SUM(WarehouseAmount) AS TotalAmount, Products.Name AS ProductName
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE WarehouseID = WarehouseIDFilter
    GROUP BY Products.Name;
END //
DELIMITER ;
