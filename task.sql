USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
  IN ID INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount FROM ProductInventory
    JOIN Products ON Products.ID = ProductID
    WHERE WarehouseID = ID;
END //
DELIMITER ;
