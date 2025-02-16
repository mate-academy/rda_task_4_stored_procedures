USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN ID INT
)
    BEGIN
        SELECT Name, ProductInventory.WarehouseAmount AS amount
        FROM Products
        JOIN ProductInventory
        ON Products.id = ProductInventory.ProductID
        WHERE ProductInventory.WarehouseID = ID;

    END //
DELIMITER ;


CALL get_warehouse_product_inventory()