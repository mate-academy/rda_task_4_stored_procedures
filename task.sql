USE ShopDB;

-- Create your stored procedure here
DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN WarehouseID INT
)
BEGIN
    SELECT P.Name, PI.WarehouseAmount
    FROM ProductInventory as PI
             JOIN ShopDB.Products P on P.ID = PI.ProductID
    WHERE PI.WarehouseID = WarehouseID;
end //

DELIMITER ;
