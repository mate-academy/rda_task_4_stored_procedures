USE ShopDB; 

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WerehouseID INT
)
BEGIN
    SELECT
        P.Name,
        PI.WarehouseAmount
    FROM ProductInventory PI
    INNER JOIN Products P
    ON PI.ProductID = P.ID
    WHERE PI.WarehouseID = WarehouseID;
END //
DELIMITER ;
