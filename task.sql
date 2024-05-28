USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN IDFilter INT
)
BEGIN
SELECT 
    Products.Name AS ProductName, WarehouseAmount
FROM
    ProductInventory
        INNER JOIN
    Products ON Products.ID = ProductID
WHERE
    WarehouseID = IDFilter;
END // 
DELIMITER ;
