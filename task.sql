USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
  IN IDFilter INT
)
BEGIN
  SELECT Products.Name, ProductInventory.WarehouseAmount
  FROM ProductInventory
  INNER JOIN Products
  ON ProductInventory.ProductID = Products.ID
  WHERE WarehouseID=IDFilter;
END //

DELIMITER ;
