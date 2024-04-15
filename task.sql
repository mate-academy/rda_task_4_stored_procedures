USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN HouseID INT
    )
BEGIN
    SELECT Products.Name, WarehouseAmount FROM ProductInventory AS ProdInv
    JOIN Products ON ProdInv.ProductID=Products.ID
    WHERE ProdInv.WarehouseID=HouseID;
END //
DELIMITER ;

CALL get_warehouse_product_inventory(2)
