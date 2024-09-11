USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN number_warehause INT
)
BEGIN
    SELECT W.Name AS 'Warehause', P.Name AS 'Product', PI.WarehouseAmount FROM ProductInventory PI
    INNER JOIN Products P ON PI.ProductID = P.ID
    INNER JOIN Warehouses W ON PI.WarehouseID = W.ID
    WHERE W.ID = number_warehause;
END //
DELIMITER ;
