USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
IN WarehouseID INT
)
BEGIN
    SELECT
        name.Name AS ProductName,
        amount.WarehouseAmount
    FROM
        ProductInventory amount
    JOIN
        Products name ON amount.ProductID = name.ID
    WHERE
        amount.WarehouseID = WarehouseID;
END //

DELIMITER ;
