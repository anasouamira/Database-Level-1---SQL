
-- 1. Add a new column 'email' to store employee email addresses
ALTER TABLE employees 
ADD email VARCHAR(255); 

-- 2. Modify the 'age' column to ensure it cannot be NULL
ALTER TABLE employees 
ALTER COLUMN age INT NOT NULL;

-- 3. Rename the 'email' column to 'contact_email'
EXEC sp_rename 'employees.email', 'contact_email', 'COLUMN';

-- 4. Drop the 'contact_email' column from the table
ALTER TABLE employees 
DROP COLUMN contact_email;

-- 5. Add a foreign key constraint on 'department_id' referencing 'departments.id'
ALTER TABLE employees 
ADD CONSTRAINT FK_employees_department 
FOREIGN KEY (department_id) REFERENCES departments(id);

-- 6. Drop the foreign key constraint
ALTER TABLE employees 
DROP CONSTRAINT FK_employees_department;

-- 7. Add a unique constraint on 'name' to ensure no duplicate names
ALTER TABLE employees 
ADD CONSTRAINT UQ_employees_name UNIQUE (name);

-- 8. Drop the unique constraint
ALTER TABLE employees 
DROP CONSTRAINT UQ_employees_name;

-- 9. Add a check constraint to ensure 'age' is greater than 18
ALTER TABLE employees 
ADD CONSTRAINT CHK_age CHECK (age > 18);

-- 10. Drop the check constraint
ALTER TABLE employees 
DROP CONSTRAINT CHK_age;

-- 11. Add a default constraint to set the default age to 25
ALTER TABLE employees 
ADD CONSTRAINT DF_default_age DEFAULT 25 FOR age;

-- 12. Drop the default constraint
ALTER TABLE employees 
DROP CONSTRAINT DF_default_age;

-- 13. Rename the 'employees' table to 'staff'
EXEC sp_rename 'employees', 'staff';

-- 14. Add an identity column (auto-increment) as the new primary key
ALTER TABLE staff 
ADD new_id INT IDENTITY(1,1) PRIMARY KEY;

-- 15. Disable an existing constraint (if needed)
ALTER TABLE staff NOCHECK CONSTRAINT FK_employees_department;

-- 16. Enable the constraint again
ALTER TABLE staff CHECK CONSTRAINT FK_employees_department;

-- 17. Disable a trigger (if one exists)
DISABLE TRIGGER trigger_name ON staff;

-- 18. Enable the trigger again
ENABLE TRIGGER trigger_name ON staff;

-- 19. Disable an index (if one exists)
ALTER INDEX index_name ON staff DISABLE;

-- 20. Rebuild (enable) an index
ALTER INDEX index_name ON staff REBUILD;



