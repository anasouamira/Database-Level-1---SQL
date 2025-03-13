/*
If there is no database with the same name,
SQL will throw an error while dropping a database.

In such situations, we can use the the following code to drop a database only
if there is existing database with the same name.
For example:
*/

 IF EXISTS(SELECT * FROM sys.databases WHERE name = 'my_database')
  BEGIN
    Drop DATABASE my_database;
  END


