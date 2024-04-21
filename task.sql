DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    WarehouseName VARCHAR(99)
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(99)
);

CREATE TABLE WarehouseInventory (
    WarehouseID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Assuming you have at least one warehouse
INSERT INTO Warehouses (WarehouseID, WarehouseName) VALUES (1, 'Main Warehouse');

-- Inserting 'AwersomeProduct' into Products table
INSERT INTO Products (ProductName) VALUES ('AwersomeProduct');

-- Assuming 'AwersomeProduct' gets ProductID of 1 and is stored in warehouse with WarehouseID of 1
-- Inserting the quantity for 'AwersomeProduct' into WarehouseInventory table
INSERT INTO WarehouseInventory (WarehouseID, ProductID, Quantity) VALUES (1, (SELECT ProductID FROM Products WHERE ProductName = 'AwersomeProduct'), 4242);

DELIMITER $$

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT p.ProductName, wi.Quantity
    FROM WarehouseInventory wi
    JOIN Products p ON wi.ProductID = p.ProductID
    WHERE wi.WarehouseID = warehouse_id;
END$$

DELIMITER ;
