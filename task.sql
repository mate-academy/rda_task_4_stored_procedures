USE ShopDB; 

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN WarehouseIDFilter varchar(10)
)
BEGIN
    SELECT Products.Name AS 'Product Name', ProductInventory.WarehouseAmount AS 'Amount'
	FROM Products
	INNER JOIN ProductInventory
	ON Products.ID = ProductInventory.ProductID
	WHERE ProductInventory.WarehouseID=WarehouseIDFilter;
END //
DELIMITER ;
