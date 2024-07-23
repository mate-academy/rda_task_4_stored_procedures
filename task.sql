USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory( 
  IN WarehouseID INT
)
BEGIN
  SELECT Products.Name AS ProductInventory, WarehouseAmount
  FROM Products JOIN ProductInventory
  ON Products.ID = ProductInventory.ProductID
  WHERE ProductInventory.WarehouseID = WarehouseID;
END //
DELIMITER ;
