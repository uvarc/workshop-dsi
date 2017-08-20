# SQL Databases - Structured Data

For these exercises we will be using a managed database service in AWS called RDS. Our
particular RDS instance is running the MySQL engine.

## Setup
From within your console, install the MySQL Client software

```bash
apt-get install mysql-client
```

## Connect to RDS

For these exercises, use the following connection parameters:

    Host: xxxxx
    User: dsiuser
    Pass: xxxxx
    Database: dsi

To connect from the command-line, use the following command:

```bash
mysql -h xxxxx -u dsiuser -p
```

You will then be prompted to enter the password for this user. Once connected you 
can leave your session open.

## List databases

```sql
LIST DATABASES;
```

## Use a database

```sql
USE DSILAB;
```

## Show tables in a database

```sql
SHOW TABLES;
```

## Describe a table

```sql
DESCRIBE students;
```

## Select the first 5 rows of a table

```sql
SELECT * FROM students LIMIT 5;
```

## Select a row with a specific value in it

```sql
SELECT * FROM students WHERE uvaid = 'nem2p';
```

## Select a row with values LIKE another value
For example, what if you wanted all records with a `uvaid` that begin with the letter B?

```sql
SELECT * FROM students WHERE uvaid LIKE 'b%';
```

## Insert a new row:

```sql
INSERT INTO students (fname, lname, uvaid, email) VALUES ('Jane', 'Doe', 'jd5x', 'jd5x@virginia.edu');
```

## Update a row (record) with a known value

```sql
UPDATE students SET email = 'nem2p@virginia.edu' WHERE uvaid = 'nem2p';
```

## Delete a specific record

```sql
DELETE FROM students WHERE uvaid = 'jd5x';
```
