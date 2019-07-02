# **Database**
**Database Servers:-**
* MySQL
* Postgre SQL
* MSSQL
* DB2
* Oracle 
* Aurora
* MariaDB

Take out the information as soon as possible


Attacks:-
* SSL Heartbleed
* BASH Injection
* SQL Injection

**Single Tier Architecture of Web Application->** In which same machine has Website and Database which is less secure as if website got hacked then DB is automatically hacked

**RDS (Relational Database Services)=>** It is a Amazon Portal which includes MySQL, Postgre SQL, MSSQL, Oracle, Aurora, MariaDB Servers (except DB2).

* SQL (Structured Query Language)-> Structured which includes rows, columns, etc.

* NOSQL (Not Only SQL)-> DynamoDB; Realtime Example:- PUBG

**Difference B/W SQL and NOSQL:-**

Where Schema is dynamic that is called NOSQL
Means where no need to create a seperate column for any specific data like if any user gives name and hobbies and you do not have hobbies section and other users are not giving hobbies.


**NOTE:-** MYSQL Database PORT NO - 3306

We can Remote SQL from anywhere in the world but Amazon declines the SSH usage as it does not gives any key. So it can connect with its PORT - 3306.

```
yum install mysql
```
Connecting using Endpoint from different system 
```
mysql -u root -h  _ENDPOINT_NAME_ -p
```
Commands In MYSQL:- 
```
show databases;

O/P:-
+--------------------+
| Database           |
+--------------------+
| information_schema |
| adhoc              |
| hello              |
| innodb             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.01 sec)
```
```
create database hello;
```
Database Migration:-

Migrating data from any Cloud to RDS

```
use adhoc;
```
```
show tables;
```

```
wget https://raw.githubusercontent.com/redashu/dbconnect/master/mysqldump/myfile.sql
```
```
mysql -u root -h _ENDPOINT_NAME_ -p adhoc <myfile.sql
```

How to connect database to Backend Language:-
---
* JAVA - JDBC(Java to DB Connector) / ODBC
* PYTHON - MySQL - Connector -> In Python DB is called Library
* PHP - MySQLi

```
pip3 install mysql-connector-python
```

```dbconn.py```
```
#!/usr/bin/python3

import mysql.connector as mysql
# RDS Information
u='root' # u=username
p='_PASSWD_'# p=password
db='adhoc'
h='_ENDPOINT_NAME_'  # h=host( ENDPOINT)

# now connceting
conn=mysql.connect(user=u,password=p,database=db,host=h)
# now generating a sql language cursor
cur=conn.cursor()

# now we can write sql query
cur.execute("show  tables;")
# now printing result
print(cur.fetchall())

# closing connection
conn.close()
```

## Database
  * MySQL
  * Postgre SQL
  * MSSQL
  * DB2
  * Oracle
  * Aurora
  * Mariadb

## Popular attacks
  * Bash
  * ssh heart bleed
  * SQL injection

## Requirements for DBA
  * Server - > to save data
  * Security - > secure from hackers and sql injections
  * Performance - > easy to write and fetch at high speed
  * If fails how to get data back
  * save from Hacking
  * Migrate from one environment to other
  * SQL Query --> (0.0001 %)

## RDS (Relational Databases Services)
  * It is a collection of all the above DBA requirements provided by AWS services
  * RAM and CPU are allocated dynamically
  * Single tier Architecture web application - > when both website and database are present on single server

```
                              |- - - - - - - - - ^
                              |                  |
[SQL Database] - - - - > [Website] - - - - > [Server]
      ^                        |  
      | - - - - - - - - - - - -          

                    MULTI-TIER ARCHITECTURE
```
  * RDS is the most highest paid service on AWS
  * it is SQL type DB
  ### How to Connect with RDS with EC2
    * Amazon never gives access to RDS
    * Port no of RDS is 3306
    * Data transmission works through socket programming
    * Database Mgration - > migrating data from one server to other
    * Remote SQL - > running SQL queries through different os
    ```
    mysql -u root -h database1.cs4a2twonycl.ap-south-1.rds.amazonaws.com -p
    ```

## NOSQL
  * NOSQL - > no structured query language
  * creates columns on real time
  * DynamoDB - > an NOSQL database , used for <b>PUBG</b> like games

## Python with RDS
  * install python module
  ```
  pip3 install mysql-connector-python
  ```
  * connector code
  ```python
  #!/usr/bin/python
  import mysql.connector as mysql
  # RDS information
  username='enter-username'
  password='enter-your-pass'
  database_name='enter-db-name'
  host='enter-end-point-of-db'

  # Now connecting the Database
  conn=mysql.connect(user=username,password=password,database=database_name,host=host)
  # Now generating a SQL language cursor
  cur = conn.cursor()

  # Now we can write SQL query
  #cur.execute('show tables;')

  # Now printing data
  #print(cur.fetchall())

  # closing connection
  conn.close()

# **S3**

* Web Hosting
* Redirection
* EBS -> S3 ? 

* Size => Unlimited size limit ; 5TB is maximum for a file ; as a student 5GB is free for 1 year ; It is region independent
* Bucket => Like a folder; and bucket should be unique globally
---

# **NAAS (Network As a Service)**
* Give same environment of network to another place which is originally is at different place

**Types:-**
---
* VPC
* Route53

**Need to understand these before understanding NAAS:-**
* IP 
* NetMask -> IP with NetMask is IP Address
* SubNet -> Dividing 4th part of IP into different parts equally
* Gateway
* DNS
* Router
* Switch
* DHCP (Dynamic Host Configuration Protocol)
* Firewall
* NAT (Network address translation)
* Routing Table

## IP Address:-

There are 4 parts :-    **-.-.-.-**
* Network Name is First 3 parts of IP Address
* if 1st part is 0-127 (Class A) then Netmask is always 255.0.0.0
* if 1st part is 128-191 (Class B) then Netmask is always 255.255.0.0
* if 1st part is 192-223 (Class C) then Netmask is always 255.255.255.0

**Prefix Length ->** IP-> 192.168.1.10 , Adding binary no of Netmask (255.255.255.0) -> 11111111.11111111.11111111.00000000 -> 192.168.1.10/24 => here 24 is prefix length (adding binary no's). Used for short forming Subnet instead of 255.255.255.0 we write "/24"

# **VPC (Virtual Private Cloud)**

Whenever we create a VPC, these are automatically created
* Router
* Security Group
* ACL
* Route Table


* 192.168.0.0/16 => 2 power (16) => 65536 connections

Amazon bydefault reserve these 5 IP's after creating a Subnet in VPC => 192.168.1.0(Network IP), 1.1(Gateway), 1.2(DNS), 1.3(Future), 1.255(Breadcast)

0.0.0.0/0 => Anywhere in this world (Route Table)
