USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory( 
	IN IDFilter INT
)
BEGIN
    SELECT Products.name, WarehouseAmount FROM ProductInventory 
    JOIN Products
    ON ProductID = Products.ID
    WHERE WarehouseID = IDFilter;
END //

DELIMITER ;
