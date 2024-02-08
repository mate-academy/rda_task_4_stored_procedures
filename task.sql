USE ShopDB; 

-- Create your stored procedure here
DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouseID INT)
BEGIN
    SELECT p.Name AS ProductName, pi.Amount
    FROM Products p
    INNER JOIN ProductInventory pi ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = warehouseID;
END //

DELIMITER ;