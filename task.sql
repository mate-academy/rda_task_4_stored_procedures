USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT
        w.Name AS WarehouseName,
        p.Name AS ProductName,
        pi.WarehouseAmount
    FROM ProductInventory pi
             JOIN Warehouses w ON pi.WarehouseID = w.ID
             JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouse_id;
END //
DELIMITER ;