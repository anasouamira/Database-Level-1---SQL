/*
If there is already a database with the same name
SQL will throw an error while creating a database.

In such situations, we can use the the following code
to create a database only if there is no existing database with the same name.
For example:
*/
 IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'my_database2')
  BEGIN
    CREATE DATABASE my_database2;
  END