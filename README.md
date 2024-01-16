# Stored procedures

Stored procedures may be useful for storing the SQL code, which can be re-used by different applications of for performing calculations on the database server. In this task you will work with the new version of a `ShopDB` database for online store. The database has the following tables:
- `Countries`, which has the following columns: `ID`, `Name`. 
- `Products`, which has the following columns: `ID`, `Name`. 
- `Warehouses`, which has the following columns: `ID`, `Name`, `Address`, `CountryID`
- `ProductInventory`, which has the following columns: `ID`, `ProductID`, `WarehouseAmount` and `WarehouseID`. 

## Task

### Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine, connect to it with the MySQL client.
2. Fork this repository.

### Requirements

In this task, you need to develop a stored procedure, which will show the information about amount of products by a warehouse.For that, you need to write the SQL code in the file `task.sql`:  

- Connect to your database server. 
- If you already have the `ShopDB` database on your database server from the previous tasks, delete it using the "DROP DATABASE ShopDB;"  statement. 
- Write a code for the stored procedure creation in the `task.sql`. 

The stored procedure should meet the following requirements: 
- It should be called `get_warehouse_product_inventory`
- It should accept single parameter - ID of the Warehouse
- It should return a table, which has a list of product names, allong with their amount on the warehouse.

Hint: use `SELECT` statement with `Join` in the stored procedure body. 

### How to Test Yourself

Just in case you want to test your script on your database before submitting a pull request, you can do it by performing the following actions: 

1. Drop the `ShopDB` database using "DROP DATABASE ShopDB;" statement if you already have it on your database server. 
2. Run database creation script `create-database.sql` on your database server. 
3. Run the script you wrote in the `task.sql` on your database server. 
4. Run the `test.sql` script on your database. If the script execution is finished without errors and if in the output you are getting only 1 item ("AwersomeProduct", count - 4242) you are ready to submit a pull request. 
