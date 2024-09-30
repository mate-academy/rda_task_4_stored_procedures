USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseIdFilter INT
)
BEGIN
    SELECT Products.Name AS ProductName, WarehouseAmount
    FROM ProductInventory
    RIGHT JOIN Products
    ON ProductInventory.ProductID = Products.ID
    WHERE WarehouseID = WarehouseIdFilter;
END //
DELIMITER ;
