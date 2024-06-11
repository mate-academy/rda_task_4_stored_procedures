# Stored Procedures

Stored procedures may help store the SQL code, which can be reused by different applications for performing calculations on the database server. In this task, you will work with the new version of a `ShopDB` database for online store with the following tables:

- `Countries`, which has the following columns: `ID` and `Name`.
- `Products`, which has the following columns: `ID` and `Name`.
- `Warehouses`, which has the following columns: `ID`, `Name`, `Address`, and `CountryID`.
- `ProductInventory`, which has the following columns: `ID`, `ProductID`, `WarehouseAmount`, and `WarehouseID`.

## Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine and connect to it with the MySQL client.
2. Fork this repository.

## Requirements

Develop a stored procedure, which will show the information about a warehouse's product amount. For that, you need to write the SQL code in the `task.sql` file:

1. Connect to your database server.
2. If you already have the `ShopDB` database on your database server from the previous tasks, delete it using the `DROP DATABASE ShopDB;` statement.
3. Write a code for the stored procedure creation in the `task.sql` file.

The stored procedure should meet the following requirements:

1. It should be called `get_warehouse_product_inventory`.
2. It should accept a single parameter — ID of the Warehouse.
3. It should return a table with a list of product names, along with their amount in the warehouse.

<details>
 <summary><strong>Hint</strong></summary>
  
  Use the `SELECT` statement with `JOIN` in the stored procedure body. 
</details>

## How to Test Yourself

Just in case you want to test your script on your database before submitting a pull request, you can do it by performing the following actions:

1. Drop the `ShopDB` database using the `DROP DATABASE ShopDB;` statement if you already have it on your database server.
2. Run the database creation script (`create-database.sql`) on your database server.
3. Run the script you wrote in the `task.sql` on your database server.
4. Run the `test.sql` script on your database. If the script execution is finished without errors and if in the output you are getting only 1 item (`AwersomeProduct`, count — `4242`) you are ready to submit a pull request.
