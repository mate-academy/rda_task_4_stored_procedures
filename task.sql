USE ShopDB; 

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
  SELECT Products.Name as Product, ProductInventory.WarehouseAmount as Amount
  FROM Products INNER JOIN ProductInventory
  ON Products.ID = ProductInventory.ProductID
  WHERE WarehouseID = warehouse_id
  ORDER BY Product;
END //
DELIMITER ;
