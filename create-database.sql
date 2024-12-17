CREATE DATABASE ShopDB;

USE ShopDB;


CREATE TABLE Countries (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Products (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Warehouses (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    CountryID INT NOT NULL,
	FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT AUTO_INCREMENT,
    ProductID INT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE NO ACTION,
    WarehouseAmount INT NOT NULL,
    WarehouseID INT NOT NULL,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

INSERT INTO Countries (ID,Name)
	VALUES (1, 'Country1');
INSERT INTO Countries (ID,Name)
	VALUES (2, 'Country2');
INSERT INTO Products (ID,Name)
	VALUES (1, 'AwersomeProduct');
INSERT INTO Warehouses (ID,Name,Address,CountryID)
	VALUES (1, 'Warehouse-1','City-1, Street-1',1);
INSERT INTO Warehouses (ID,Name,Address,CountryID)
	VALUES (2, 'Warehouse-2','City-2, Street-2',2);
INSERT INTO ProductInventory (ID,ProductID,WarehouseAmount,WarehouseID)
	VALUES (1, 1, 2, 1);
INSERT INTO ProductInventory (ID,ProductID,WarehouseAmount,WarehouseID)
	VALUES (2, 1, 4242, 2);
