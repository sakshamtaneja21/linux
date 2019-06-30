# Day 24
#### Some common Database Servers
*   MySql
*   PostgreSQL
*   MSQL
*   DB2
*   Oracle
*   Aurora
*   MariaDB
#### Some Popular Attacks
*   SSL Heart Bleed
*   Bash
*   SQL Injection
#### Roles of DBA
*   Which Server to use
*   Security of Database
*   Performance
*   If Fail then what to do
*   If Hacked then what to do
*   How to Migrate
*   SQl Query
## Single Tier Architecture
*   Using a same system for website hosting and Database is called as Single tier Architecture of web application.
*   Popular and big companies dont prefer single tier
*   The problem with this system is if one system is hacked then everything will be hacked.
## Multi Tier Architecture
*   Using web hosting server and Database both on different servers.
*   A normal user cannot establish connection directly to the database server, only the web server can establish connection with the database.
## RDS (Releational Database Server)
*   RDS and DynamoDB are two types of Amazon Database systems
*   RDS is SQL type
*   DynamoDB is NoSql type
*   DynamoDB is the most popular NoSQL Database
*   DynamoDB is used in Pubg
*   It is a automation collection of All the above Database Servers and Roles except (Db2 and SQL Query).
*   It is an automated system which allocates required hardware resources like RAM CPU and scale its performance as per the needs.
*   You just need to click and everything will be setuped by its own.
*   It provide us Multi Tier Architecture in Database server.
*   There are two types of database systems
    *   SQL
    *   NoSQl
*   Remote Querry means accessing database server from a remote location.
*   We need to install MySQL before using it
```
yum install mysql -y
```
*   Now to connect with RDS you have to use Endpoint Name for access.
```
mysql -u root -h akshaybengani.c770gcxklmnn.ap-south-1.rds.amazonaws.com -p
```
*   To import data from an external source or file use the IO Redirection ```<``` for importing.
```
mysql -u root -h -p  akshaydb < myfil
e.sql
```
*   The file ```myfile.sql``` is stored in 
```
https://raw.githubusercontent.com/redashu/dbconnect/master/mysqldump/myfile.sql
```
*   To install ```mysql-connector``` you need to install this via pip3
```
pip3 install mysql-connector-python
```
*   To create a new table use the traditional mysql way.
```sql
create table rtables(name varchar(20), surname varchar(20), age int,email varchar(20))
```
*   Python File for Databases
```py
#!/usr/bin/python3
import mysql.connector as mysql
# RDS info

user = "root"
pass = "Redhat123"
db = "retro"
host = "mysqldbserver.cqypbbo9r82r.us-east-1.rds.amazonaws.com"

# Now Connecting with Database
connection = mysql.connect(user=user,password=pass,database=db,host=host)

# Now Generating a sql lang cursor
cur = connection.cursor()

# Now we can write SQL Query
data = cur.execute("Select * from rtables")
print(data)
```
