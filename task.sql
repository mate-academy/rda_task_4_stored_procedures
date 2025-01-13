USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT 
        Products.Name AS ProductName, 
        ProductInventory.WarehouseAmount AS Amount
    FROM Products
    INNER JOIN ProductInventory ON Products.ID = ProductInventory.ProductID
    WHERE ProductInventory.WarehouseID = warehouse_id;
END //
DELIMITER ;


CALL get_warehouse_product_inventory(2);
