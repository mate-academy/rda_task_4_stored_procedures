DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    WarehouseName VARCHAR(99)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(99)
);

CREATE TABLE WarehouseInventory (
    WarehouseID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT p.ProductName, wi.Quantity
    FROM WarehouseInventory wi
    JOIN Products p ON wi.ProductID = p.ProductID
    WHERE wi.WarehouseID = warehouse_id;
END$$

DELIMITER ;
