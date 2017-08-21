# SQL Databases - Structured Data

For these exercises we will be using a managed database service in AWS called RDS. Our
particular RDS instance is running the MySQL engine.

## Setup
From within your console, install the MySQL Client software

```bash
apt-get install mysql-client
```

## Connect to RDS

For these exercises, use the connection parameters from this page (under the MySQL settings):
https://discuss.rc.virginia.edu/t/dsi-workshop-lab-credentials/387

To connect from the command-line, use the following command:

```bash
mysql -h HOSTNAME -u USERNAME -p
```

You will then be prompted to enter the password for this user. Once connected you 
can leave your session open.

## List databases

```sql
LIST DATABASES;
```

## Use a database

```sql
USE dsi;
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

## Count total records in a table

```sql
SELECT COUNT(*) FROM students;
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

# Exercises

1. Search the table for all entries with the First Name beginning with the letter `S`.
2. Count all records in the table that contain the letter `N`.
3. Update the table to include your Last Name and Email address.
4. Try to insert a non-numberic value in the `favno` column. What response do you get?
4. Insert your favorite number into the `favno` column for your record.
4. Insert a new record for a fictitious user.
5. Count total records in the `student` table after adding.
6. Delete the record you just added.
7. Count total records again.
9. Bonus - Which member of your class has the longest first name, and how many characters does it have?
