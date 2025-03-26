/*
A differential back up only backs up the parts of the database
that have changed since the last full database backup.

In SQL, we can create differential database backups using the 
BACKUP DATABASE With Differential  statement. For example: 
*/


BACKUP DATABASE MyDatabase1
TO DISK = 'C:\MyDatabase1_backup.bak'
WITH DIFFERENTIAL;

/*
Here, the SQL command appends only new changes to the previous backup file.
Hence, this command may work faster.

Tip: A differential back up reduces the back up time (since only the changes
are backed up).
*/