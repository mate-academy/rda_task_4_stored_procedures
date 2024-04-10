USE ShopDB; 

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
	IN IDFilter INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM ShopDB.ProductInventory
    INNER JOIN ShopDB.Products
    ON ShopDB.ProductInventory.ProductID = ShopDB.Products.ID
    WHERE ProductInventory.WarehouseID=IDFilter;
END //
DELIMITER ;
