
CREATE TABLE Departments (
    ID int identity(1,1)  NOT NULL,
    Name nvarchar(50) NOT NULL,
    PRIMARY KEY (ID)
);




-----------------------

insert into Departments 
values ('HR');

print @@identity;