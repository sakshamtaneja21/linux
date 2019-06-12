# DAY 6

## Notes
  * if permissions are not given to a user for a file the user can copy the file to another path and he will have all permissions to play with it
  * sticky-bit is default applied in tmp directory
  * dev directory is devices
  * etc is extended configuration
  * hard-disk should be purchased from same active region of service
  * hard - disk is purchased from EBS under Volume
  * Mailinator is a website where free email id is provided without credentials.
  * to make multiple directory at single time
  ```
  mkdir -p A/B/D/H A/C/F A/B/E
  ```
  * By default mkdir make directory with permission 777 - umask(002)
  * By default text-files are given permission 662
  * `+` indicates ACL is being applied at some file
  * when we check ACL permissions on a file it shows a type mask which indicates highest permission on file
  In chmod we have a octal number system also there.<br>
Read  -   4
Write  -    2
execute -   1
remove  -   0

754 
4+2+1 = 7 read write execute
4+1 = 5 read execute
4 = 4 read

Sticky bit  -    1
SGID        -    2
2+1 =3 SGID and STicky bit
1 sticky
2 sgid

chmod 3777 /folder

Set File Access Control List
-m stands for modify
setfacl -m u:u4:rx /check
u stands for user
g stands for group

Get File Access Control List
getfacl /check
This is used to check the permissions

To remove facl we use
setfacl -x u:u4 /check

umask is a factor in permissions which gives permission to every new file or directory.

To remove permission from firefox from user 4
setfacl -m u:u4:--- /usr/bin/firefox


## LINUX Redhat
  * lsblk # shows partitions and hard disks in red Redhat
  * fdisk -l      # shows partitions in present hard-disk
  * $ setfacl -b  file.ext # Remove all ACL permissions
  * $ setfacl -x u:user-name file.ext # Remove single user ACL
  * $ yum provides package-name   # it tells us which repo provides the specific package
  * $ yum reinstall package-name #reinstalls the specified package
## Architecture (TASK)
  * Make two groups
  * in group 1 add 3 users
  * in group 2 add 5 users
  * create folders A to M as in pic
  * in K directory only permissions will be given to group 2
  * in L directory the permissions will be given to group 1
  * top 3 levels of architecture should not be touched by any of the groups
  * use stickybit and gsid
  * make the architecture using mkdir only once

## File System Security
  * read  = 4
  * write = 2
  * execute = 1
  * sticky bit = 1
  * SGID = 2
  * None = -
  * example
    ```
    $ chmod 421 file.ext
    # 421 == owner group other
    ```
  * all permission = 7
  * remove all permission = 000
  * add all permission = 777
  * read + execute = 4 + 1 = 5
  ```
   chmod  u     own     g     oth     
        special owner group   other
  ```
  example $chmod 2777 /check  # add SGID

## User architecture
  * root - all permissions
  * group - name = Tech - has 2 users - all permission
  * other - has many users - no permissions
  * provide rx permission to single user in other    * it can be done using ACL

## Access control list
  * extended permission to be given  to different users and permissions will be different
  * setfacl - > set file access control list
  * -m - > modify , user:user-name:permission
  ```
  $ setfacl -m u:u4:rx file.extension
  $ getfacl file.extension
  ```
  * to check ACL permission given to which user use ```getfacl```
  * to remove ACL permission from a users
    ```
     $ setfacl -x u:u4 file.extension
    ```

* ### Linux permissions is an important topic find out all questions related to it over google

* ### UMASK - >  changing permissions which comes by default

## Storage Management
  * As per Student , storage is of 2 types ~ :
    1. Primary - > RAM
    2. Secondary - > HDD
  * By 2025 DNA will replace hard-disk to store data
   ( Project human as a storage device , 2kg DNA)
  * Why partitions are necessary :
    partitions are necessary to use same hard disk for multiple OS installations
    
## Secondary Storage

There are two types of partition table
*   MBR (Master Boot Record)
*   GPT (Guided Partition Table)

Partition table is a memory or a storage which remembers no of partitions size and other info.

  ### Partition table
    * No of partitions that are possible to br created in a storage depends on partition table.
    * It is of 2 types ~ :
      1. MBR
      2. GPT
    * in a hard disk , how many partitions can be made beyond hard disk size
    * MBR (Master Boot Record) - > minimum 4 partitions are possible approximately
    * GPT - > around 10 partitions are possible approximately
    * partition table is made inside the hard - disk itself
    * MBR does not work over 2 TB data hard-disk
    * GPT has no limit or around ( 8 ETB)
    * By default GPT partition table is used Windows nowadays

  #### MBR
    * 64 byte size for partition information
    * Parttions are of 2 types :
      1. Primary ( 4 partition possible)
      2. Logical
    * OS is installed in Primary partition
    * Stores data fast, secure, easy to access in primary partition
    * other then primary partition , we can make extended partition
    * extended partition does not store data but inside it we can creates logical partition (60 possible) which stores information.
    * total partitions present = primary + logical in reality but it shows total partitions = primary + extended + Logical
    * Only single extended partition possible with 3 primary partitions
    * without extended , we can make 4 primary partitions.
    * maximum 2TB hard-disk size

  #### GPT
    * GUID Partition table
    * Globally Unique Identifier
    * No logic regarding extended partitions
    * 128 primary partitions are possible

## UMASK
  * it defines the allotment of permissions to newly created files in linux.
  * to find current permissions to be given to file calculate umask value by
    0777 - umask around
  * check with file system permissions numbering
  * other user has umask = 0002(default)
  * root user has umask = 0022 (default)
  
### Primary Partition
* An operating system needs primary partition for its installation.
* We can make maximum 4 primary partitions in MBR.

### Logical Partition
* There are under Extended partition.
* In an extened partition we have 60 Logical partition.

# Python Class

```py
impory sys
x= sys.argv[1:]
sum = 0
for i in x:
    sum = sum + int(i)
print(sum)
```
```
$python sum.py 1 5351 8453 465 3554 454 3
354015
```

## TASK
  * open 4 ~ 5 processes and save data of RAM to hard-disk and after reboot re-transfer data from hard-disk to RAM
  * create a file that contains number of email ids,send a common email message to all emails and verify the email address as well
   * find number of devices connected from your hotspot using python
* WAP to list number of users present in linux based OS
* take 10 commands randomly from a user and check if it is present then run it other wise give voice based error message
* make  tree directory architecture and provide different permissions

