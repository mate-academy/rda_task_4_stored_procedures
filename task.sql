USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT p.Name as ProductName, pi.WarehouseAmount as ProductAmount
    FROM Products p JOIN ProductInventory pi ON p.ID = pi.ProductID
    WHERE pi.WarehouseID = WarehouseID;
END //

DELIMITER ;


