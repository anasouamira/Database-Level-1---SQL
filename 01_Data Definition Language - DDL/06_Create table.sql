/*
A database table is used to store records (data). To create a database table, we use the SQL CREATE TABLE statement. Syntax:

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
    ....
);


The column parameters specify the names of the columns of the table.

The datatype parameter specifies the type of data the column can hold (e.g. varchar, integer, date, etc.).

Note: We must provide data types for each column while creating a table.
*/

CREATE TABLE Employees(
    ID int NOT NULL,
    Name nvarchar(50) NOT NULL,
	Phone nvarchar(10) NULL,
	Salary smallmoney NULL,
    PRIMARY KEY (ID)
);

-- this how to delete table : 

DROP TABLE Employees;