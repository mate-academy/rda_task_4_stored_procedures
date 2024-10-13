USE ShopDB; 

-- Create your stored procedure here

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN ID INT)
BEGIN
    SELECT Products.Name AS ProductName, ProductInventory.WarehouseAmount AS Amount
    FROM ProductInventory
    JOIN Products
    ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = ID;
END //

DELIMITER ;
