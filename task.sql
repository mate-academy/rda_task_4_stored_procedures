DELIMITER $$
USE ShopDB;
CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)  
BEGIN  

    SELECT   
        prod.Name,  
        pi.WarehouseAmount  
    FROM   
        ProductInventory pi  
    JOIN   
        Products prod ON pi.ProductID = prod.ID
    WHERE   
        pi.WarehouseID = warehouse_id;  
END $$  

DELIMITER ;