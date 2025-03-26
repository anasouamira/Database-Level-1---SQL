/*
It is important to create database backups regularly so that our
data won't get lost if the database gets corrupted.

In SQL, we can create database backups using the BACKUP DATABASE statement. For example,
*/


BACKUP DATABASE MyDatabase1
TO DISK = 'C:\MyDatabase1_backup.bak';

/*
    Here, the SQL command creates a backup file of the MyDatabase1
    database inside C drive, named MyDatabase1_backup.bak.

    Note: It's a common convention to use the .bak file extension for
    database backup files, however, it's not mandatory.

    Tip: Always back up the database to a different drive than the actual database.
    Then, if you get a disk crash, you will not lose your backup file along with the database.
*/
