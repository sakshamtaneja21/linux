# DAY7

## Notes
  * Amazon keeps everything stored permanently even if the connectivity with putty is weak or disturbed(gets inactive)
  * smallest unit of HDD is sector
  * 1 Sector = 512 bytes
  * minimum size of a partition is 512 bytes always
  * 1kb = 1024 bytes = 2 * 512 bytes
  * Deleting or formatting Extended partition leads to loss of all logical partitions
  * Formatting does not mean Deleting data , it creates an environment for HDD to be understood by OS
  * Windows - NTFS(New Technology File System) , Red Hat - XFS , MAC - HFS+
  * common format mode is FAT and vfat - - > detectable on all OS
  * Format makes the index of HDD, inode table entry - empty
  * always partitions are formatted not HDD
  * mkfs. - > followed by double-taps shows all available extensions for format of hdd
  * /mnt  # forlder made in linux where new HDD directory are created but not icon
  * /media  # forlder made in linux where new HDD directory are created with icon
  * Popular Webserver is Apache which is free
  * Apache is the name of foundation with 3 products ~
    1. apache httpd ( works for all)
    2. apache apache2 ( works only
    ubuntu type OS)
    3. apache TOMCAT (for JAVA)
  * LAMP - LINUX Apache Mysql PHP
  * NGINX is also a web server
  * IIS - internet information services - best for .net service providing and it is need to be purchased (from microsoft)
  * apache TOMCAT - most powerfull server for JAVA based web-site
  * IRCTC website works on NGINX
  * By default apache can run html websites
  * /var/www/html is the document root for your Apache
  * For task goto http://slashreboot.blogspot.com
  * for google search using python use googlesearch module
  * if need to do both read and write
    1. r+ - > use when file is already created
    2. w+ - > use when file is need to be created


## To Attach a Volume
  * Open Instance in running state
  * Go to Volume section ad create ew hard disk
  * use 2 Gb volume size
  * select availability zone
  * create Volume
  * refresh
  * attach Volume


## Linux Commands
  * $ fdisk -l # no of hdd attached to linux
  * $ fdisk -l disk-name # shows only the hdd with disk-name given
  * fdisk disk-name # enter in the disk
  * mkfs.xfs partition-name # mkfs - > make file system , xfs - > supportable format
  * $ df  # disk free , shows the path of new partition or HDD mounted on OS
  * $ df -h # path of new partitions in human readable format
  * $ df -hT # shows format type
  * $ rpm -q package-name # package available to in system
  * $ rpm -qc package-name # query configuration
  * $ systemctl start package-name # start the service of your package
  * $ systemctl status package-name # check the status of your services

## To Create partition in HDD
  * $ fdisk disk-name
  * type print or p #shows present partition if present
  * new or n # to create new partition
  * Select the type of partition
    primary = p ; extended = e
  * select primary partition and 1 partition
  * starting of the partition should be taken default
  * +size(unit) # example, +300M creates a 300MB size partition
  * to create last partition just keep on using default values to use complete HDD size
  ```
  Never - Ever delete or format Extended partition
  ```
  * To create logical partitions,first needs to create extended partition then only logical partition will be made
  * q to quit without saving and wq to save

#### Format partition
  * mkfs.extension partition-name

## Mount hdd
  * it occurs after ,
    1. Partition creation
    2. Format the HDD
  * if mounting an partition into an OS , the OS will create a folder at some random location and link with /tmp/newvolume which shows the icon on Desktop
  * Mount means creating a folder and map/link the partition
  * make a folder in /mnt #it will not make an icon
  * use the Command
  ```
  mount /dev/xvdf1 /mnt/mypart
  ```
  * to make an icon, mount HDD in /media by making a folder in it

  ### Make mounting permanent
    * open /etc/stab
    * at end write
      partition-name mount-folder format-type
    * $ mount -a # checks if mounting is done properly

## Server
  * Server is a kind of service provider
    example ~
      1. Gmail - email Server
      2. Youtube - streaming Server
      3. Teacher - knowledge Server
      4. Projector - visual server
  * Client is a service receiver and service is obtained after receiver request

  ### Architecture
  ```
    many-client -  -  internet/network ---- (server)
  ```
  * web-server is one which provides a web-page
 ### To deploy any server
  1. Install software related to that server
  ```
  $ yum install httpd # if not present in OS
  ```
  2. Configure the changes --(do rquired changes) # no need for html
  3. Start service
  ```
  $ systemctl start httpd
  ```
    * To start any service in Redhat use command to start any service, httpd replace by any services
  4. Check for status using
  ```
  $ systemctl status httpd
  ```
## Deploy your own web-site
  * Create a web-package and save it in /var/www/html
  * On AWS allow http port from security part
  * Open a web-browser , in URL insert aws-ip/page-name

## Directory / File Handling
  1. things that can be done with a directory are :
    * create
    * delete
    * permission
    * rename
    * store
    * cp
    * cut
    * blank

  2. work to do in file-Handling
    * permission - no need to Open
    * read - need
    * create - file need to be opened
    * append - need
    * write - need
    * delete - no need


  ### OS module
    * chdir = change Directory
    * curdir = present working Directory
    
    
 # Day 7

MBR (Master Boot Record) In our old laptops we have by default bios loaders which means we have MBR installed. Since new releases have by default UEFi installed.

## To list the disks attached in the system
Use the command ```lsblk``` to list the attached volumes

## To list detailed view of hard drives
Use the command ```fdisk -l``` to list detailed view of drives.

```
[root@ip-172-31-43-73 ~]# fdisk -l
WARNING: fdisk GPT support is currently new, and therefore in an experimental phase. Use at your own discretion.

Disk /dev/xvda: 10.7 GB, 10737418240 bytes, 20971520 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: gpt
Disk identifier: 477BBCC7-BB8A-408B-9778-8F4E6E46B138


#         Start          End    Size  Type            Name
 1         2048         4095      1M  BIOS boot
 2         4096     20971486     10G  Microsoft basic

Disk /dev/xvdf: 2147 MB, 2147483648 bytes, 4194304 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
```
## To list detailed view of a selected drive
Use ```fdisk -l /diskname```
```
[root@ip-172-31-43-73 ~]# fdisk -l /dev/xvdf

Disk /dev/xvdf: 2147 MB, 2147483648 bytes, 4194304 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
```

## To get inside a hard disk
Use ```fdisk /drivename```
```
[root@ip-172-31-43-73 ~]# fdisk /dev/xvdf
Welcome to fdisk (util-linux 2.23.2).

Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Device does not contain a recognized partition table
Building a new DOS disklabel with disk identifier 0xf5cce8b6.

Command (m for help): print

Disk /dev/xvdf: 2147 MB, 2147483648 bytes, 4194304 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: dos
Disk identifier: 0xf5cce8b6

    Device Boot      Start         End      Blocks   Id  System

Command (m for help):
```
## Create ```new``` partition
The smallest thing in a hard disk is sector which is a size of 512bytes.
Now to create a new partition use the command ```new``` or ```n``` to create a new partition.

```
Command (m for help): n
Partition type:
   p   primary (0 primary, 0 extended, 4 free)
   e   extended
Select (default p):
```

## To create a primary partition in disk
By default we create a primary partition so in order to create a primary partition we have to press ```p``` in order to create a primary partition.
```
Select (default p): p
Partition number (1-4, default 1):
```
## To start the first sector we have to enter the block value by default we have to press ```enter```.
```
First sector (2048-4194303, default 2048):
Using default value 2048
```
## Now we have to give size or number of sectors
To give size we use ```+300M``` to create a 300MB partition in the drive
```
Last sector, +sectors or +size{K,M,G} (2048-4194303, default 4194303): +300M
```
## Again we have to create 2 more primary partitions total 3 primary
```
Command (m for help): n
Partition type:
   p   primary (2 primary, 0 extended, 2 free)
   e   extended
Select (default p): p
Partition number (3,4, default 3):
First sector (1026048-4194303, default 1026048):
Using default value 1026048
Last sector, +sectors or +size{K,M,G} (1026048-4194303, default 4194303): +100M
Partition 3 of type Linux and of size 100 MiB is set
```
## Now we have to create the last partition as extended partition.

```
Command (m for help): n
Partition type:
   p   primary (3 primary, 0 extended, 1 free)
   e   extended
Select (default e):
Using default response e
Selected partition 4
First sector (1230848-4194303, default 1230848):
Using default value 1230848
Last sector, +sectors or +size{K,M,G} (1230848-4194303, default 4194303):
Using default value 4194303
Partition 4 of type Extended and of size 1.4 GiB is set
```

#### Note never ever delete or format extended partition because it contains all of your logical partitions.

## Now we will create our 1st logical partition.
```
Command (m for help): n
All primary partitions are in use
Adding logical partition 5
First sector (1232896-4194303, default 1232896):
Using default value 1232896
Last sector, +sectors or +size{K,M,G} (1232896-4194303, default 4194303): +250M
Partition 5 of type Linux and of size 250 MiB is set

Command (m for help): p

Disk /dev/xvdf: 2147 MB, 2147483648 bytes, 4194304 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: dos
Disk identifier: 0xcff9d12c

    Device Boot      Start         End      Blocks   Id  System
/dev/xvdf1            2048      616447      307200   83  Linux
/dev/xvdf2          616448     1026047      204800   83  Linux
/dev/xvdf3         1026048     1230847      102400   83  Linux
/dev/xvdf4         1230848     4194303     1481728    5  Extended
/dev/xvdf5         1232896     1744895      256000   83  Linux
```
## Now to save the partition system we have to use ```wq``` to save and exit the partition system
```
Command (m for help): wq
The partition table has been altered!

Calling ioctl() to re-read partition table.
Syncing disks.
[root@ip-172-31-43-73 ~]#
```
#### Now we have created partitions now we need to format the partitions in order to make it understandable to Operating system
Formatting a system means making enviorment, when we format a drive it cleans the ```Inode``` table index, this doesn't means that we have deleted the data from the hard drive.

*   NTFS New technology file system. This is for Windows Users
*   HFS+ This is for Apple users.
*   XFS This is used for RedHat OS.
*   FAT / VFAT / eXFAT It is the common file system which works on all Operating Systems.

## To format a partition
When we need to format the partition with ```XFS``` for our redhat system. Therefore we use
```
[root@ip-172-31-43-73 ~]# mkfs.xfs /dev/xvdf1
meta-data=/dev/xvdf1             isize=512    agcount=4, agsize=19200 blks
         =                       sectsz=512   attr=2, projid32bit=1
         =                       crc=1        finobt=0, sparse=0
data     =                       bsize=4096   blocks=76800, imaxpct=25
         =                       sunit=0      swidth=0 blks
naming   =version 2              bsize=4096   ascii-ci=0 ftype=1
log      =internal log           bsize=4096   blocks=855, version=2
         =                       sectsz=512   sunit=0 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0
```
## To check how many format file systems are available in your system
Press ```mkfs.``` and press ```double Tab``` to get the available file systems in your system.

```
[root@ip-172-31-43-73 ~]# mkfs.
mkfs.btrfs   mkfs.cramfs  mkfs.ext2    mkfs.ext3    mkfs.ext4    mkfs.minix   mkfs.xfs
```
## Now we need to Mount our drive in order to use that.
When we mount a drive we basically create a folder and we map the partition with the folder. When we mount it assigns a icon to the folder which looks like a drive attached.

Basically mount means create a folder and map/link a partition.

#### To check the mounted disks we use the command ```df```.
```
[root@ip-172-31-43-73 ~]# df
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/xvda2      10473452 1802012   8671440  18% /
devtmpfs          484748       0    484748   0% /dev
tmpfs             506948       0    506948   0% /dev/shm
tmpfs             506948   13280    493668   3% /run
tmpfs             506948       0    506948   0% /sys/fs/cgroup
tmpfs             101392       0    101392   0% /run/user/1000
tmpfs             101392       0    101392   0% /run/user/0
```
Now Create a folder in ```/mnt/drivename``` and then mount the partition. Check the exit code with ```echo $?```
```
[root@ip-172-31-43-73 mnt]# mount /dev/xvdf1 /mnt/mydrive300size/
[root@ip-172-31-43-73 mnt]# echo $?
0
```
#### In order to check the drive in human readable format use ```-h``` and with format ```-T```
```
[root@ip-172-31-43-73 mnt]# df -hT
Filesystem     Type      Size  Used Avail Use% Mounted on
/dev/xvda2     xfs        10G  1.8G  8.3G  18% /
devtmpfs       devtmpfs  474M     0  474M   0% /dev
tmpfs          tmpfs     496M     0  496M   0% /dev/shm
tmpfs          tmpfs     496M   13M  483M   3% /run
tmpfs          tmpfs     496M     0  496M   0% /sys/fs/cgroup
tmpfs          tmpfs     100M     0  100M   0% /run/user/1000
tmpfs          tmpfs     100M     0  100M   0% /run/user/0
/dev/xvdf1     xfs       297M   16M  282M   6% /mnt/mydrive300size
```
#### Now we have mounted the partition but its icon is not visible. So if you need icon then create a folder in ```/media/partitionname``` insteed of ```/mnt/partitionname```.
Mounting a partition in media folder will automatically create a icon for that.

## Now we need to create permanent entry for mounting the drive.
There is a file in ```/etc/fstab``` which is used to automount the drive.
```
/dev/xvdf1 /mnt/mydrive300size XFS
```
## Client and Server Architecture
*   Server is a service provider which responds on a request generated by a client.
*   CLient is service reciever which request from server to get its response by server.
*   The server which serves web pages is called as web server.
*   The most popular web server on internet is Apache ```httpd``` and Apache ```apache2```
*   ```httpd``` works on every operating system.
*   ```apache2```  works on Ubuntu or linux systems.
*   NGINX is also a popular server. Example IRCTC Website works on NGINX
*   IIS is a specialized server which works best for Dot net based serves.
*   TOMCAT is a apache server which works best on JAVA based websites for streaming. It is specifically configured for JAVA websites.

## To check a software is installed on RedHat or not.
Use the command ```rpm -q package_name``` to check that the package is available or not.

## To check software configuration file of a package.
Use the command argument ```-c``` like ```rpm -qc package_name```
```
[root@ip-172-31-9-238 ~]# rpm -qc httpd
/etc/httpd/conf.d/autoindex.conf
/etc/httpd/conf.d/userdir.conf
/etc/httpd/conf.d/welcome.conf
/etc/httpd/conf.modules.d/00-base.conf
/etc/httpd/conf.modules.d/00-dav.conf
/etc/httpd/conf.modules.d/00-lua.conf
/etc/httpd/conf.modules.d/00-mpm.conf
/etc/httpd/conf.modules.d/00-proxy.conf
/etc/httpd/conf.modules.d/00-systemd.conf
/etc/httpd/conf.modules.d/01-cgi.conf
/etc/httpd/conf/httpd.conf
/etc/httpd/conf/magic
/etc/logrotate.d/httpd
/etc/sysconfig/htcacheclean
/etc/sysconfig/httpd
```

## To start a service or check status of a service in redhat
Use the command ```systemctl start service_name```<br>
Use the command ```systemctl status service_name```
```
[root@ip-172-31-9-238 ~]# systemctl start httpd
[root@ip-172-31-9-238 ~]# systemctl status httpd
● httpd.service - The Apache HTTP Server
   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)
   Active: active (running) since Sun 2019-06-09 06:15:23 UTC; 5s ago
     Docs: man:httpd(8)
           man:apachectl(8)
 Main PID: 1391 (httpd)
   Status: "Processing requests..."
   CGroup: /system.slice/httpd.service
           ├─1391 /usr/sbin/httpd -DFOREGROUND
           ├─1392 /usr/sbin/httpd -DFOREGROUND
           ├─1393 /usr/sbin/httpd -DFOREGROUND
           ├─1394 /usr/sbin/httpd -DFOREGROUND
           ├─1395 /usr/sbin/httpd -DFOREGROUND
           └─1396 /usr/sbin/httpd -DFOREGROUND

Jun 09 06:15:23 ip-172-31-9-238.ap-south-1.compute.internal systemd[1]: Starting The Apache HTTP Server...
Jun 09 06:15:23 ip-172-31-9-238.ap-south-1.compute.internal systemd[1]: Started The Apache HTTP Server.
```
## Now we need to add the code of our html page.
*   So we have code in our github and we can clone that code in ```/var/www/html/```
*   Now by default we dont have git installed so install git ```yum install git```
*   Now clone the webpage you want and just use the folder path and run that.

## File Handling in Python
There are some operations we perform in file handling.
*   create
*   delete
*   rename
*   store
*   permission
*   Copy
*   Cut
*   blank

### Example code to search time functions in time liberary
```py
import time
x=[]
for i in dir(time):
    if 'time' in i:
        x.append(i)
```
```
y = [i for in dir(name) if 'time' in i]
```
```
import os
[j for j in dir(os) if 'dir' in j]
```
```
os.mkdir('hellololllloooo)
os.rmdir('ubfibjv)
```
```chdir``` it means ```cd```
```curdir``` it means ```pwd```
```chmod``` it means ```chmod```
```mkdir``` it means ```mkdir```

* To open a file we have a function ```open()```
```py
f = open('hello.txt','w')
```
*   To write a file we have a function ```write()``` in python call this will file handle.   
```
f = open('hello.txt','w')
f.write("Hello world this is file writer")
```
*   To close a file we have
```
f = open('hello.txt','w')
f.write("Hello world this is file writer")
f.close()
```
*   To apply both ```read``` and ```write``` operations we use ```w+``` 
*   When we write or read something python cursor shifts.
*   To fix this issue we have a function ```seek()``` this is used to get the curson position by entering the integer value of the position
*   To open a file in append mode use the mode ```a``` while opening the file.
    *   Since this is to add the data you cannot read the data.
*   To perform both read and write operations then use ```a+``` to perform read and write operations.






