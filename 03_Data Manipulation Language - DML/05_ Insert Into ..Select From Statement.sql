-- Insert all rows from 'Persons' into 'OldPersons'
INSERT INTO OldPersons
SELECT * FROM Persons;
-- Insert only persons aged 30 or older into 'OldPersons'
INSERT INTO OldPersons
SELECT * FROM Persons
WHERE age >= 30;

INSERT INTO OldPersons (id, name, age)
SELECT id, name, age FROM Persons WHERE age >= 30;