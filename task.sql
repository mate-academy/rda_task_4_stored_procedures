USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN HouseID INT
    )
BEGIN
    SELECT P.Name, WarehouseAmount
    FROM ProductInventory AS PI
    JOIN Products AS P ON PI.ProductID=P.ID
    WHERE PI.WarehouseID=HouseID;
END //
DELIMITER ;

CALL get_warehouse_product_inventory(2)
