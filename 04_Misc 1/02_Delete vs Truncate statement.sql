
select * from Departments;

--this will delete all rows but will not reset the identity counter.
delete from Departments;


--this will delete all rows and reset the identity counter.
truncate table departments;

insert into Departments 
values ('HR');

print @@identity;