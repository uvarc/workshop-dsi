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
    Pass: AQXVXRYx
    Database: dsi

To connect from the command-line, use the following command:

```bash
mysql -h xxxxx -u dsiuser -p
```

You will then be prompted to enter the password for this user. Once connected you 
can leave your session open.

## List databases

```
list databases;
```

## Use a database

```
use dsilab;
```

## Show tables in a database

```
show tables;
```

## Describe a table;

```sql
describe students;
```

## Select the first 5 rows of a table:

```sql
select * from students limit 5;
```

## Select a row with a specific value in it:

```sql
select * from students where uvaid = 'nem2p';
```
