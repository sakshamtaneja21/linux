# Day 14
Today we will learn about ```NFS``` (Network File System)

*   We need to install this package, This package gives us a feature to use ```tab``` key to autocomplete things.
```
yum install bash-completion
```
*   After installing we need to restart bash service just type ```bash```
```
bash
```
## NFS Configuration
*   The package which provide us NFS service we use the package
```
yum install nfs-utils
```
*   Now we need to start the service and keep that enabled in next boot we use
```
systemctl start nfs-server
systemctl enable nfs-server
```
*   Now we need to create a directory in ```/``` partition which we will use to share on the network
```
mkdir /nfs
```
*   We can check the configuration file of a package using the command
```
whereis /*nfs
```
*   Using ```-qc``` with rpm gives us a list of all the configuration file.
```
[root@ip-172-31-9-238 nfs]# rpm -qc nfs-utils
/etc/gssproxy/24-nfs-server.conf
/etc/modprobe.d/lockd.conf
/etc/nfs.conf
/etc/nfsmount.conf
/etc/request-key.d/id_resolver.conf
/etc/sysconfig/nfs
/var/lib/nfs/etab
/var/lib/nfs/rmtab
/var/lib/nfs/state
/var/lib/nfs/xtab
```
*   Now we need to create a configuration file in ```/etc/exports``` so we have created a configuration file called exports
*   change folder permissions
```
chmod 757 /nfs/
```
```
/nfs *(ro)
```
*   Now run these
*   ```exportfs -r``` is used to reload the ```exports``` configuration
```
exportfs -r
showmount -e 172.31.45.242
systemctl status firewalld.target
systemctl status iptables.service
systemctl restart nfs
iptables -F
```
*   iptables works at the backend of the firewall configuration.
*   To force allow everything to iptables we use
```
iptables -F
```
*   This command will turn SELinux off.
```
setenforce 0
setenforce: SELinux is disabled
```
*   Now we need to mount the ip address
```
mkdir /mnt/mynfs
mount 172.31.45.242:/nfs /mnt/mynfs
```
*   This is used to give root access to the user who is using the NFS system.
```
/nfs *(rw,no_root_squash)
```
*   Now we need to entry in fstab
*   ```_netdev``` is used to specify that mount this device when you get networkIP, so that while in boot time this entry don't get crashed.
*   So first we will get systemIP then we will mount to the nfs drive.
```
vi /etc/fstab
172.131.45.242:/nfs /mnt/nfs/   nfs  _netdev 0 0
```
*   Check this before you restart.
```
mount -a
```
# Python
*   Today we will learn ```requests``` module
*   In Python version 2 we use lib
*   In Python version 3 we use requests
*   There is a file in our linux system which stores our DNS server details. you can enter your custom DNS ```nameserver``` IP
```
/etc/resolv.conf
```
*   There are total 13 main DNS Servers in the world.
*   There is a liberary in python called ```tts``` for text to speech.
*   COpy tts commands from piyush
## Database
*   There are two types of databases Sequal and no sequal
*   When we create a database it actually creates a folder.
*   Database engine plays an important role in working and speed of a database.
*   The speed and performance totally depends upon its engine.
*   The popular database engines are
    1. Blackhole
    2. Inno DB
    3. MyISAM
    4. CV5  
*   Popular databases are
    1. MySQL
    2. Oracle
    3. MS-SQL
    4. PostgreSQL
    5. DB2
    6. Aurora
*   Whenever we connect to a database in a programming language like ```JDBC``` we actually connect to the Database Engine.
*   Story of Maria DB
    *   MySQL developer was busy in something and he skips development of MYsql and sell it to Oracle.
    *   But Oracle MySQL 

## Installation of MariaDB
*   To install mariadb we use
```
yum install mariadb-server
```
* To check the configuration file of MariaDB
```
[root@ip-172-31-9-238 yum.repos.d]# rpm -qc mariadb-server
/etc/logrotate.d/mariadb
/etc/my.cnf.d/server.cnf
/var/log/mariadb/mariadb.log
```
*   Now we need to start MariaDB
```
systemctl start mariadb
systemctl enable mariadb
```
*   Default port for MariaDB is ```3306``` we can connect using a socket to use this database.
*   In linux there is a file which contains all the protocols
```
cat /etc/services
cat /etc/services | grep -i 3306

[root@ip-172-31-9-238 yum.repos.d]# cat /etc/services | grep -i 3306
mysql   3306/tcp    # MySQL
mysql   3306/udp    # MySQL
```
*   To get into the mysql database we use ```mysql``` command in terminal.
```
[root@ip-172-31-9-238 yum.repos.d]# mysql
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 2
Server version: 5.5.60-MariaDB MariaDB Server
Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]>
```
*   Now to print in MySQL we use ```select``` command
```
MariaDB [(none)]> select "Hi Akshay"
    -> ;
+-----------+
| Hi Akshay |
+-----------+
| Hi Akshay |
+-----------+
1 row in set (0.00 sec)
```
* We can also use different operations with select command
```
MariaDB [(none)]> select 40+52;
+-------+
| 40+52 |
+-------+
|    92 |
+-------+
1 row in set (0.00 sec)
```
* By default MariaDB comes with few databases for its own use.
```
MariaDB [(none)]> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| test               |
+--------------------+
4 rows in set (0.00 sec)
```
* Now to create a database we use keywords ```create database DBNAME```
```
MariaDB [(none)]> create database AkshayDB;
Query OK, 1 row affected (0.00 sec)
```
*   Physically the database folders are stored in ```/var/lib/mysql```.
*   We can rename a database name just by changing the name of the folder.
*   We can set permissions or delete a database just by deleting the folder.
*   To get into a database we use the keyword ```use```
```
MariaDB [(none)]> use AkshayDB
Database changed
MariaDB [AkshayDB]>
```
*   Tables are the excel type of files which store data in form of columns and rows.
*   To list tables we use the command ```show tables```
```
MariaDB [mysql]> show tables
    -> ;
+---------------------------+
| Tables_in_mysql           |
+---------------------------+
| columns_priv              |
| db                        |
| event                     |
| func                      |
| general_log
```
* To list all the data of a table we use ```select``` command
```
MariaDB [mysql]> select * from user;
```
*   To secure your database, we use ```mysql_secure_installation```
```
[root@ip-172-31-9-238 mysql]# mysql_secure_installation

NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MariaDB
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!

In order to log into MariaDB to secure it, we'll need the current
password for the root user.  If you've just installed MariaDB, and
you haven't set the root password yet, the password will be blank,
so you should just press enter here.

Enter current password for root (enter for none):
```
```
OK, successfully used password, moving on...

Setting the root password ensures that nobody can log into the MariaDB
root user without the proper authorisation.

Set root password? [Y/n] y
```
* I have used ```akshay``` as password
```
New password:
Re-enter new password:
Password updated successfully!
Reloading privilege tables..
 ... Success!
```
```
By default, a MariaDB installation has an anonymous user, allowing anyone
to log into MariaDB without having to have a user account created for
them.  This is intended only for testing, and to make the installation
go a bit smoother.  You should remove them before moving into a
production environment.

Remove anonymous users? [Y/n] y
 ... Success!
```
```
Normally, root should only be allowed to connect from 'localhost'.  This
ensures that someone cannot guess at the root password from the network.

Disallow root login remotely? [Y/n] y
 ... Success!
```
```
By default, MariaDB comes with a database named 'test' that anyone can
access.  This is also intended only for testing, and should be removed
before moving into a production environment.

Remove test database and access to it? [Y/n] y
 - Dropping test database...
 ... Success!
 - Removing privileges on test database...
 ... Success!
```
```
Reloading the privilege tables will ensure that all changes made so far
will take effect immediately.

Reload privilege tables now? [Y/n] y
 ... Success!
Cleaning up...

All done!  If you've completed all of the above steps, your MariaDB
installation should now be secure.

Thanks for using MariaDB!
```
*   Now just typing ```mysql``` will not work we need to use this command with the password ```akshay```
```
mysql -u root -p
```
### How to crack MariaDB Password
*   First step is stop the service of mariadb
```
systemctl stop mariadb
```
*   Use this command to enter in mysqld_safe
```
mysqld_safe --skip-grant-tables &
```

