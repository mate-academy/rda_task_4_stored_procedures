USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN Warehouse_id INT)
BEGIN
    SELECT
        p.Name AS ProductName,
        pi.WarehouseAmount
    FROM ProductInventory pi
    JOIN Products p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = Warehouse_id;
END //
DELIMITER ;
