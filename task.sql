USE ShopDB; 

DELIMITER $$
CREATE PROCEDURE get_warehouse_product_inventory(IN p_ID INT)
BEGIN
    SELECT t.Name, p.WarehouseAmount 
    from Warehouses w 
    join ProductInventory p on w.id = p.WarehouseID 
    join Products t on t.ID = p.ProductID
	where w.id = p_ID;
END $$
DELIMITER;