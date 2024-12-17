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

INSERT INTO Countries (Name)
	VALUES ('Country1');
INSERT INTO Countries (Name)
	VALUES ('Country2');
INSERT INTO Products (Name)
	VALUES ('AwersomeProduct');
INSERT INTO Warehouses (Name,Address,CountryID)
	VALUES ('Warehouse-1','City-1, Street-1',1);
INSERT INTO Warehouses (Name,Address,CountryID)
	VALUES ('Warehouse-2','City-2, Street-2',2);
INSERT INTO ProductInventory (ProductID,WarehouseAmount,WarehouseID)
	VALUES (1, 2, 1);
INSERT INTO ProductInventory (ProductID,WarehouseAmount,WarehouseID)
	VALUES (1, 4242, 2);
