

## Redhat Traininig

# RHCSA Complete Notes

## Linux Basic Commands
```shell
* $ mkdir folder-name{1..50}        # {} encloses a range and creates 50 folder in linux
* $ useradd user-name               # Creates a new user
* $ pinky                           # shows information of all available users
* $ rm -f                           # Forcefully remove files
* $ rm -fv                          # forcefully remove file with an action responding work done
* press F2                          # used to rename a file
* $ cal September 1752              # shows september calendar with dates missing from 3 to 13
* $ date +%Y                        # Current year
* $ date +%A                        # Current Weekday
* $ date +%T                        # Current Time
* $ date --help                     # all options available with date command
* $ cal -j                          # Shows Julean Calendar
* $ bc                              # opens a calculator
* $ ls -F                           # check which is folder and which is file in a directory
* $ mkdir -p folder1/folder2        # both folders will be created together
* $ rm -rf pi*                      # deletes all folders starting with 'pi' , use anything instead of 'pi'
* $ su                              # switch users through command line
* $ uname                                 #name of the kernel used in OS
* $ uname -r                              # version of the currently used kernel
* $ strace date                           # S stand for system, it shows the background functioning of command (system call)
* $ shell-name                            # it changes the shell currently being used, and to close just type exit
* $ cat                                   # it is file viewer
* $ uptime                                # Details about time since when last logined
* $ !history-number                       # history-number represents the sequence number of command in history and it runs the command again
* $ !starting-text-of-command(bottom-up approach) #same as above
* $ echo variable-name                     # if variable is not existing , it gives blank without error
* $ echo $ SHELL                          # predefined variable to show shell name
* $ echo $ USER                           # predefined variable to show logged in user
* $ echo $ LANG                           # shows default system language
* $ echo $ HISTSIZE                       # no of history commands that can be saved
* $ echo $ HISTFILE                       # storage location of history file
* $ PSI="Pykid : -- > "                   # inside " " anything can be written and it will be seen as written in terminal left side
* $ env                                   # shows all primitive/predefined commands
* $ alias variable-name='command'         # used to create alias / alternative of any command
* $ source path-of-file                   # it merges any new changes made outside of terminal
* $ tput bold                             # change text inside Terminal to bold
* $ tput setab 3                          # changes background color of terminal
* $ script -t 2>script-name.txt           # stores all actions performed in a script file
* $ scriptreplay script-name              # replays all commands made on terminal
* $ which  and $ whereis                  # shows tthe stored path for any software or file
* $ echo $PATH                                   # gives the path of various directories where primitive commands are stored
  (Director1 : Directory2 : DirectoryN)
* $ wc -l file-name.extension                    # count no. of line in file
* $ wc -w file-name.extension                    # count no. of words in file
* $ wc -c file-name.extension                    # count no. of characters in file
* $ grep search-text where-to-search             # finds the text with similar pattern
* $ grep -i search-text where-to-search          # finds the text (Non-Case Sensitive)
* $ grep -w search-text where-to-search          # find the text with exact word
* $ grep -v search-text where-to-search          # find the text that doesn't match the search-text
* $ head -n file-name                            # extracts n lines from top of file
* $ tail -n file-name                            # extracts n lines from bottom of file
* $ `command`file-name.txt                       # back quotes make command work if no space is given
* $ tar -cvf new-file.tar file-name.extension    # c - create ; v - visual ; f - forcefully , creates a archive
* $ ls -lh                                       # shows file size in respective formats (kb/mb/gb)
* $ ls -l                                        # shows file info ( size, permissions, name) , size in kb
* $ tar -tvf new-file.tar file-name.extension    # shows the files present in archive
* $ tar -xvf new-file.tar                        # extracts all files out of tar/archive
* $ tar -czvf new.tar.gz file1.ext file2.ext     # z- gzip , it commpreses the large files into size of Kbs
* $ chmod 400 file-name.extension       # Secures the file from public
* $ ssh user-name@IP                    # To connect to IP of different instance
* $ ssh -i key-path user-name@IP        # red hat command to connect to cloud instance
* $ sudo -i                             # switch user to root without password when connected to cloud instance
* $ passwd user-name                    # give password to a user
* $ userdel -r user-name                # removes user, -r removes all data stored by user being removed
* $ adduser user-name                   # add user in ubuntu OS
* $ id -u                               # shows the id of user
* $ lpr file-name                  # used to print files
* $ ls -ld                         # shows inode table of directory itself
* $ ls -ild                        # shows inode number of directory
* $ ls -l                          # shows inode table of files inside a directory
* $ chgrp grp-name                 # create a group
* $ chgrp grp-name directory-path  # changes creators name to group name
* $ chown owner-name new-name      # change owner name
* $ useradd -G grp-name user-name  # add a user to existing group
* $ usermod grp-name user-name  # add a user to existing group if user already exists
* lsblk # shows partitions and hard disks in red Redhat
* fdisk -l      # shows partitions in present hard-disk
* $ setfacl -b  file.ext # Remove all ACL permissions
* $ setfacl -x u:user-name file.ext # Remove single user ACL
* $ yum provides package-name   # it tells us which repo provides the specific package
* $ yum reinstall package-name #reinstalls the specified package
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
* $ tac file-name.txt   # reverse the order of reading from bottom to top
* $ rev file-name.txt   # reverse the words in file reading from top to bottom
* $ qrencode -s 16x16 -o file-name.png web-site-link # Creates a QR code for the websites, -o shows output to save
* $ systemctl enable docker # start the docker each time  OS
* $ systemctl start docker # initiate docker
* $ docker ps # shows running iso file
* $ docker ps -a # shows all containers running or shut-down
* $ docker ps -qa # shows all id's of all pre-made containers
* $ docker rm $(docker ps -qa) # delete all the containers
* $ docker tag old-iso-name new-iso-name # make a copy of old-iso image with a new name with same id
* $ docker rmi docker-image-tag # removes the docker image with tag provided
* $ docker inspect elated_yonath # gives details about docker from which we can get ip
* $ kill -s STOP 'pidof firefox'  # used to send a process of firefoox in pause state
* $ kill -s CONT 'pidof firefox' # it will resume the state of firefoox
* $ docker run -itd docker-image process -name # d - > dettach, run the container but user doesn't login to container instead container moves to background
* $ docker stop container-id # to stop a running containers
* To clear cache memory of system run command
sync; echo 3 | sudo tee /proc/sys/vm/drop_caches

```
----
## LVM
  * fdisk -l # to check your attached volume are attached properly
  * Create virtual HDD by
  * creating a physical volume by run the Command
  ```
  $ pvcreate disk-name-1 disk-name-2
  ```
  * run Command - provides a name to virtual group
  ```
  $ vgcreate virtual-hard-disk-name /dev/hdd-name1 /dev/hdd-name2..
  ```
  * to display the created hdd , run Command
  ```
  $ vgdisplay virtual-hdd-name
  ```
  * finally create a LVM
  ```
  $ lvcreate --name lv-name --size size-name virt-hdd-name
  ```
  * to check final virtual group status run
  ```
  $ lvdisplay
  ```
  * now you can create partition and use HDD
  * LVM stands for Logical Volume Manager
  * -l extents - > it is used to provide size in terms of extents
  ```
  lvcreate --name tech -l 30 vg-name
  ```
  * to display the content of lvm in short use ```lvs```
  * to give a physical extent size to vg group usw ``` -s ```
  ```
  vgcreate -s 16M vg-name hdd-name1 hdd-name2
  ```
----

## Stratis
  * It works on thin provision
  * It allocates memory on run time
  * ``` 2**24```  filesystem can be created from single Pool
  * it formats the filesystem as well
  * dm-raid - > handles the system output in terms of storage
  * maximum size of Pool can be only 1 terabyte
  * Block-Devices refers to the hard disk
  * By default it works over xfs only
  * it requires package ``` stratisd  and stratis-cli```
  * to get local repo for rhel8
  ```
  baseurl=ftp://192.168.10.254/pub/rhel8/AppStream/
  baseurl=ftp://192.168.10.254/pub/rhel8/BaseOS/
  ```
  * start its services by
  ```
    systemctl start stratisd.service
    systemctl enable stratisd.service
  ```
  * to create a Pool
  ```
  stratis pool create pool-name Block-device-name1 block-device-name2
  ```
  * to check Pool
  ```
  stratis pool list
  ```
  * to check block devices attached
  ```
  stratis blockdev list
  ```
  * to create filesystem
  ```
  stratis filesystem create name-of-pool-to-use filesystem-name1
  ```
  * to mount you can use Device name1
  ```
  mount /stratis/pool-name/file-name /mnt/folder-name1
  ```
  * to extend pool storage / or attach another HDD
  ```
  stratis pool add-data  pool-name disk-name
  ```
  * its fstab should be written as such that first stratis service should be up then only mount the device
  ```
  device-path mount-folder-path format defaults,x-systemd.requires=stratisd.service  0 0
  ```
  * in format 0 0 defines backup and protection by company default structure

  * To create a snapshot(backup) of filesystem
  ```
  stratis filesystem snapshot pool-name filesystem-name-to-make-snapshot-of file-name-of-snapshot
  stratis filesystem snapshot pool1 file1 snap1
  ```
  * to find the created list of snapshots
  ```
  stratis filesystem list
  ```
  * a snapshot is a copy of file system which can be allocated anywhere and it takes size from pool (maybe not sure)
---

## NFS

 ### Server
  * for ubuntu ( sudo apt-get install kernel-nfs-server)
  * for rhel ( sudo yum install nfs-utils )
  * Create a directory to use as nfs ( mkdir /shareable-directory)
  * ``` vi /etc/exports```
    directory-path ip-to-allow-to-connect(rw or ro,no_root_squash)
  * ```exportfs -r``` # it makes all files shareable on server, basically reloads the exports file
  * ```chmod 757 directory-path```
  * showmount -e ip-of-server ( All traffic should be open )
 ### Client
  * showmount -e server-ip
  * mount server-ip:directory-path directory-path-to-mount-on
  * entry in fstab
    ```
    source-ip:directory-path where-to-mount nfs _netdev 0 0
    ```

  * ifconfig```br0: ```
  * ifnet is the private ip
  * lancard of ethernet is eno1
  *  lancard of wifi is wl
  *  bridgecard is br0
  *  in exam many things are configured on br0
  * Fixing an IP is termed as static ip

---
## Setting up static IP
  * ping ip-address -> find a ip which shows Destination Host Unreachable
  * ping server-name (if not possible then set in resolv.conf )
  * set ip not reachable
  ```
  cd /etc/sysconfig/network-scripts/
  ```
  * name of file in this directory should be ifcfg-lan_card_name
  example ifcfg-eth0
    * vi ifcfg-etho
    * change BOOTPROTO="static"
    * NAME = "lan-card-name"
    * ONBOOT = "yes"
    * in last line
    ```
    IPADDR= 192.168.10.43
    DNS=192.168.10.254 (server will be given,name-server/domain-name-server)
    NETMASK= 255.255.255.0 - > single public ip (can be taken from ifconfig)
    GATEWAY= 192.168.10.1     (ip to communicates with outside world)
    ```
    * route -n # shows the values of kernel ip routing table
    * 0.0.0.0 means anywhere
    * run command
    ```
    systemctl restart network-online.target
    ```
    * after configuration, reboot which must show the set ip
    * resolv.conf - > gives ip from name
    * after setting static ip
    * open ```/etc/resolv.conf```
    * nameserver ip-address-of-eth0

----

## Network Time Protocol (NTP)

  * NTP is configured for security purpose
  * The time of server and local machine should be similar to be able to work upon somekind of network
  * it is used by package called ```chrony```
  * in conf file of chrony ```/etc/chrony.conf```, enter
  ```
    server adhocnw.example.com
  ```
  * restart service
  ```
  systemctl restart chronyd
  ```
  * enable the service
  ```
  systemctl enable chronyd
  ```
  * to check the server information
  ```
  chronyc sourcestats
  ```
  * offset -> in how much time it synchronises the time with server
  * to get complete info
  ```
  chronyc tracking
  ```
  * official website of ntp : www.pool.ntp.org

---

## SWAP
  * hard-disk can be used as a RAM
  * swap memory - > using the hard-disk partition as a RAM
  * to check swap ```free -m```
  * RAM 2G - >  SWAP 2G
  * RAM 8G -> SWAP 4G

  ### To create swap
    * make partition
    * mkswap hdd-name
    * To start swap ```swapon hdd-name```
    * To stop swap ```swapoff hdd-name```
    * make it permanent using UUID
    ```
    UUID swap swap defaults 0 0
    ```
    * ```swapon -a``` to mount fstab entry

    * To create data lots of data (kachra)
      1. of = output file
      2. bs = blocksize
      3. count = no of blocks
      ```
      dd if=/dev/urandom of=file-name bs=10M count=100
      ```
    * to extend lvm size with format extension as well
    ```
    lvextend --size +1G /dev/vggroup-name/lv-name -r
    ```
    * to increase the format size of lvm , if partition is already formatted with xfs
    ```
    xfs_growfs              # only for xfs type
    ```
    * to increase the format size of any format
    ```
    resize2f lvm-name
    ```
----    

## Tuned
* For tunning purpose of machine
  1. Create a repo
  ```
  [a]
  baseurl=ftp://192.168.10.254/pub/rhel8/AppStream
  gpgcheck=0
  [b]
  baseurl=ftp://192.168.10.254/pub/rhel8/BaseOS
  gpgcheck=0
```
  2. yum install tuned

* to check current administrator
  ```
  tuned-adm active
  ```
* start the tuned services ``` systemctl start tuned```
* to get best adm ```tuned-adm recommended```
* to change adm ```tuned-adm profile name-of-list```

---
# Nice & Renice
1. nice is for giving Performance options to some task
2. if a new process starts it can be started with nice to provide with efficient performance resources ```nice -n -value process-name```
3. if process is already i action then renice command can be used ```renice -n -value process-id```
4. -20 stands for highest performance and +19 for lowest
5. ```ps -xl``` shows process list where NI is for Nice
6. To change nice value
7. Usage with respect to CPU can be checked
```
ps -aux --sort=pcpu
```
----

## In exam , two virual machines will be provided , so perform tasks as specified
  * 122 is ip given by virtual machine when its connected with Base OS and its not accessible to all world
  * World cannot directly access virtual machine , the network is accessed through Base OS
  * always create password through ```passwd``` command only -- no reason
  * crontab doesn't show actions or output of some command on terminal so it can be checked using I/O redirection
  * ```watch date``` is command to start clock
  * always restart service after changing config file of any services
  * to install new kernel
  ```
  rpm -ivh ftp-address-of-kernel-location    i - > install , u - > update
  ```
  * kernel installation process takes time so when this command is run ... wait until hostname is available to you by default ```ctrl C``` is prohibited in this action
  * to check kernel when reboot is done .... more then 2 lines will be seen for kernel
  * selinux is always updated only after reboot
  * after reboot selinux relabels all files and gets persistent

----

## Enable IP Forwarding
  * It is a feature of router with help of which ip of different series are able to communicate with each other
  * two lan cards can communicate with each other when its ON
  * run command
  ```
  sysctl -a | grep -i ip_fo
  ```
  * set net.ipv4.ip_forward = 1
  * to make ip forwarding permanent,open
  ```
  vim /etc/sysctl.conf
  ```
  * write at end of sysctl.conf file
  ```
  net.ipv4.ip_forward = 1
  ```
  * to load new settings - > reads the sysctl.conf file and updates
  ```
  sysctl -p
  ```
  * 0 - > Disable    1 - > Enable
  * to set it temporarily
  ```
  sysctl net.ipv4.ip_forward = 1
  ```
----

## Archive
  * for gzip  --z  --gz
  ```
  tar -cvzf file.tar.gz file-to-make-tar
  ```
  * for bzip2
  ```
  tar -cjvf file.tar.bz2 folder-name
  ```
  * for xz
  ```
  tar -cJvf file.tar.xz folder-name
  ```
  * to decompress files elsewhere, copy the tar in that directory and decompress it by
  ```
  tar -xvf tar-name
  ```
  * to decompress at certain path
  ```
  tar -xvf tar-name -C path-name
  ```
----

## VDO -> Virtual Data Optimizer
  * Minimum space requires = 15 to 20 GB
  * maintins the copy of two or more copies
  * the virtual size remains same and not increases even if same file is copied in the same folder again and again
  * it is a optimizer and maintains if data is not duplicated
  * for repo  requires
  ```
  baseurl=AppStream and BaseOS
  ```
  * repo link will be provided by the examiner
  * for installation
  ```
  yum install vdo kmod-kvdo
  ```
  * it is not a service
  * to create a vdo
  ```
  vdo create --name=vdo1 --device=/dev/vda --vdoLogicalSize=50G
  ```
  * logical size can be greater then actual block device
  * it is an dev mapper technology device <b>DM</b>
  * to get information about vdo device
  ```
  vdo status --name=particular-vdo-name
  ```
  * to get all vdo devices list
  ```
  vdo status
  ```
  * to get list of vdo devices, uses 4GB for meta-data
  ```
  vdostats --human-readable
  ```
  * saving % denotes the amount of duplicated data
  * to format
  ```
  mkfs.xfs /dev/mapper/vdo1
  ```
  * for mounting
  ```
  mount /dev/mapper/vdo-name  path-to-mount
  ```
  * for fstab entry ,
  ```
  /dev/mapper/vdo1 path-to-mount xfs defaults,x-systemd.requires=vdo.service 0 0
  ```

----

# RHEL 8 exam tips  ( NOTHING IS RIGID ... SAMEY KE SAATH PARIVARTAN NISHCHIT HAI )
1.
  * Base OS = 7.5
  * make sure to use base OS properly
  * two OS will be provided one for partition problems, one for other
  * names of virtual machines - > station1,station2 or node1,node2 or machine1,machine2 or system2,system4

2. <b> IP ADDRESS </b>
  *  series 172.23.10.3 netmask 255.255.255.0
  * partition setup to be done ---- IP not to be set
  * Non partition ---- IP set
  * just reverse for password break

3.
  * ifconfig not working , its replacement is ```ip a```
  * there will be no ifcfg-eno1 file ---check the same file in your base OS
  * SET IP Address graphically
    1. in terminal if we run ```startx``` command GUI will be opened
    2. open wired setting
    3. click on + in wired
    4. check on manual
    5. Move top IPv4 and set all details
    6. reboot
```


# **Redhat**
```
Cracking Redhat root password 7.5 or 8
add these lines which line is starting from "linux" in boot menu 

```ctrl+e```
```
enforcing=0 rd.break
```
```ctrl+x```

o= other argument
```
mount -o remount,rw /sysroot/ 

chroot /sysroot/

passwd root
```
this command updates the ```unlabeled_t``` to ```shadow_t``` for reading the root passwords
```
restorecon
```
Shadow file contains all user's passwords; Z= show security content
```
ls -ldZ /etc/shadow
```

---
```WarmUp```

Case 2. 
        1.

Server Version
```
cat /etc/os-release
```
RAM check
```
free -m
```
Disk check, CPU info
```
df -hT

fdisk -l

cat /proc/cpuinfo
```
2.

```
sudo yum update
```
3.


```
partx /dev/xvdb

pvcreate /dev/xvdb1
vgcreate vg1 /dev/xvd1
vgs
pvs

lvcreate --name blu --size 3.8G vg1
lvs

mkfs.xfs /dev/mapper/vg1-blu

mkdir /home2
mount /dev/mapper/vg1-blu /home2
mount | grep -i /home2
vim /etc/fstab
blkid # For  UID no.
```
```/etc/fstab```
```
/dev/mapper/vg1-blu   /home2   xfs   noexec,defaults 0 0
```
```
mount -a
```
4.
```
sed -i 's/SELINUX=enforcing/SELINUX=disabled' /etc/selinux/config
```
5.
```
timedatectl set-timezone Asia/Kolkata

timedatectl
```
8.
```
vi /etc/profile.d/motd.sh
```
```
rm -rf /etc/profile.d/.motd.sh.swp
```
```
cat /proc/cpuinfo | grep -w 'model name' | awk -F: '{print $2}'
cat /proc/meminfo | grep -w "MemTotal" | awk -F: '{print $2 / 1000}'
cat /proc/swaps
``` 

### Stratis
  * It works on thin provision
  * It allocates memory on run time
  * ``` 2**24```  filesystem can be created from single Pool
  * it formats the filesystem as well
  * dm-raid - > handles the system output in terms of storage
  * maximum size of Pool can be only 1 terabyte
  * Block-Devices refers to the hard disk
  * By default it works over xfs only
  * it requires package ``` stratisd  and stratis-cli```
  * to get local repo for rhel8
  ```
  baseurl=ftp://192.168.10.254/pub/rhel8/AppStream/
  baseurl=ftp://192.168.10.254/pub/rhel8/BaseOS/
  ```
  * start its services by
  ```
    systemctl start stratisd.service
    systemctl enable stratisd.service
  ```
  * to create a Pool
  ```
  stratis pool create pool-name Block-device-name1 block-device-name2
  ```
  * to check Pool
  ```
  stratis pool list
  ```
  * to check block devices attached
  ```
  stratis blockdev list
  ```
  * to create filesystem
  ```
  stratis filesystem create name-of-pool-to-use filesystem-name1
  ```
  * to mount you can use Device name1
  ```
  mount /stratis/pool-name/file-name /mnt/folder-name1
  ```
  * to extend pool storage / or attach another HDD
  ```
  stratis pool add-data  pool-name disk-name
  ```
  * its fstab should be written as such that first stratis service should be up then only mount the device
  ```
  device-path mount-folder-path format x-systemd.requires=stratisd.service  0 0
  ```
  * in format 0 0 defines backup and protection by company default structure

  * To create a snapshot(backup) of filesystem
  ```
  stratis filesystem snapshot pool-name filesystem-name-to-make-snapshot-of file-name-of-snapshot
  stratis filesystem snapshot pool1 file1 snap1
  ```
  * to find the created list of snapshots
  ```
  stratis filesystem list
  ```
  * a snapshot is a copy of file system which can be allocated anywhere and it takes size from pool (maybe not sure)
----

# **RedHat**

For showing the UUID of any disk as this shows the UUID of ```/dev/sda1```
```
lsblk --output=uuid /dev/sda1

# DAY 24

## Network Time Protocol (NTP)

  * NTP is configured for security purpose
  * The time of server and local machine should be similar to be able to work upon somekind of network
  * it is used by package called ```chrony```
  * in conf file of chrony ```/etc/chrony.conf```, enter
  ```
  server adhocnw.example.com
  ```
  * restart service
  ```
  systemctl restart chronyd
  ```
  * enable the service
  ```
  systemctl enable chronyd
  ```
  * to check the server information
  ```
  chronyc sourcestats
  ```
  * offset -> in how much time it synchronises the time with server
  * to get complete info
  ```
  chronyc tracking
  ```
  * official website of ntp : www.pool.ntp.org

## SWAP
 * hard-disk can be used as a RAM
 * swap memory - > using the hard-disk partition as a RAM
 * RAM 2G - >  SWAP 2G
 * RAM 8G -> SWAP 4G

 ### To create swap
  * make partition
  * mkswap hdd-name
  * To start swap ```swapon hdd-name```
  * To stop swap ```swapoff hdd-name```
  * to check swap ```free -m```
  * make it permanent using UUID
  ```
  UUID swap swap defaults 0 0
  ```
  * ```swapon -a``` to mount fstab entry

 ###
    * To create data lots of data (kachra)
      1. of = output file
      2. bs = blocksize
      3. count = no of blocks 
    ```
    dd if=/dev/urandom of=file-name bs=10M count=100
    ```
    * to extend lvm size with format extension as well
    ```
    lvextend --size +1G /dev/vggroup-name/lv-name -r
    ```
    * to increase the format size of lvm , if partition is already formatted with xfs
    ```
    xfs_growfs              # only for xfs type
    ```
    * to increase the format size of any format
    ```
    resize2f lvm-name
    ```
```
```

for accessing websites from dns 

```vi /etc/resolve.conf```
```

```
Make a file immutable(not changeable) even for root and for disable use ```-i```; i= immutable
```
chattr +i /etc/resolve.conf
```
for checking the immutable files 
```
lsattr
```

### Chrony(NTP= Network Time Protocol)[Chrony is for RHEL 8 and NTP is for RHEL 7]

```
yum install chrony
```
```
systemctl restart chronyd
systemctl enable chronyd
```
```
rpm -qc chrony
```
```vi /etc/chrony.conf```

comment it 
```
pool 2.rhel.pool.ntp.org iburst
```
then write the server instead of it
```
server adhoc.example.com
```
```
systemctl restart chronyd
systemctl enable chronyd
```
```
chronyc sourcestats
chronyc tracking
```

### **Swap:- For making HDD memory as a RAM**

check memory
```
free -m
```
firstly make a partition 
then format it to swap format

```
mkswap /dev/vde
```
for mounting
```
swapon /dev/vde
```
for unmount
```
swapoff /dev/vde
```
for UUID
```
blkid /dev/vde
OR
lsblk --output=UUID /dev/vde
```
now entry in fstab
```
UUID=_UUID_   swap   swap  defaults 0 0
```

For Extending Partition size at run time (increasing 100 MB in current storage); -r= formats automatically with current formated type
```
lvextend --size +100M /dev/saksham/shubham 
OR
lvextend --size +100M /dev/saksham/shubham -r
```
for formatting new memory which appends in current memory
```
xfs_growfs /dev/saksham
```
for formatting new storage with exist storage format just except xfs format
```
resize2fs
```

## **TUNED=** Change the Performance profile like powersave or balance etc.

```
tuned-adm list
```
```
tuned-adm active
```
sets another profile; balanced= profile name
```
tuned-adm profile balanced
```
tells the recommeded profile which is default
```
tuned-adm recommend
```
for turning tuned off
```
tune-adm off
```
powersave= profile name
```
tuned-adm profile powersave
```
for turning on cockpit socket for web console (_IP_:9090)
```
systemctl enable --now cockpit.socket
```

## **Nice=** sets the performance of any specific process
Most Better Performance = -20
Most Lowest Performance = 19

```
nice>>>>performance >> level>>>-20 to 19 or renice
```
shows the current processes
```
ps -xl
```
&= Shifts command to background
```
vi &
ps -xl | grep vi
```
Changing the Nice priority; 6689= Process ID(PID); -n= new Priority
```
renice -n 10 6689
```
shows the PID, 
```
ps -o pid,comm,nice 5235
```
```
ps -aux --sort=pcpu
```
Sets the priority and transfers vim .bashrc command in background; priority = -5
```
nice -n -5 vim .bashrc&
```

## **VDO = Virtual Data Optimizer**

```
yum install vdo kmod-kvdo
```
```
vdo create --name=vdo1 --device=/dev/vdd1 --vdoLogicalSize=50G
```

* To Practice - > 192.168.10.254/rhcsa
    username - exam
    pass - redhat
  * to change hostname
  ```
  hostnamectl set-hostname new-hostname
  ```
  * For tunning purpose of machine
    1. Create a repo
    ```
    [a]
    baseurl=ftp://192.168.10.254/pub/rhel8/AppStream
    gpgcheck=0
    [b]
    baseurl=ftp://192.168.10.254/pub/rhel8/BaseOS
    gpgcheck=0
  ```
    2. yum install tuned

  * to check current administrator
    ```
    tuned-adm active
    ```
  * start the tuned services ``` systemctl start tuned```
  * to get best adm ```tuned-adm recommended```
  * to change adm ```tuned-adm profile name-of-list```

* nice % renice
  1. nice is for giving Performance options to some task
  2. if a new process starts it can be started with nice to provide with efficient performance resources ```nice -n -value process-name```
  3. if process is already i action then renice command can be used ```renice -n -value process-id```
  4. -20 stands for highest performance and +19 for lowest
  5. ```ps -xl``` shows process list where NI is for Nice
  6. To change nice value
  7. Usage with respect to CPU can be checked
  ```
  ps -aux --sort=pcpu
  ```
  
  ### In exam , two virual machines will be provided , so perform tasks as specified
  * 122 is ip given by virtual machine when its connected with Base OS and its not accessible to all world
  * World cannot directly access virtual machine , the network is accessed through Base OS
  * always create password through ```passwd``` command only -- no reason
  * crontab doesn't show actions or output of some command on terminal so it can be checked using I/O redirection
  * ```watch date``` is command to start clock
  * always restart service after changing config file of any services
  * to install new kernel
  ```
  rpm -ivh ftp-address-of-kernel-location    i - > install , u - > update
  ```
  * kernel installation process takes time so when this command is run ... wait until hostname is available to you by default ```ctrl C``` is prohibited in this action
  * to check kernel when reboot is done .... more then 2 lines will be seen for kernel
  * selinux is always updated only after reboot
  * after reboot selinux relabels all files and gets persistent

  ## Enable IP Forwarding
    * It is a feature of router with help of which ip of different series are able to communicate with each other
    * two lan cards can communicate with each other when its ON
    * run command
    ```
    sysctl -a | grep -i ip_fo
    ```
    * set net.ipv4.ip_forward = 1
    * to make ip forwarding permanent,open
    ```
    vim /etc/sysctl.conf
    ```
    * write at end of sysctl.conf file
    ```
    net.ipv4.ip_forward = 1
    ```
    * to load new settings - > reads the sysctl.conf file and updates
    ```
    sysctl -p
    ```
    * 0 - > Disable    1 - > Enable
    * to set it temporarily
    ```
    sysctl net.ipv4.ip_forward = 1
    ```
  
### In exam , two virual machines will be provided , so perform tasks as specified
  * 122 is ip given by virtual machine when its connected with Base OS and its not accessible to all world
  * World cannot directly access virtual machine , the network is accessed through Base OS
  * always create password through ```passwd``` command only -- no reason
  * crontab doesn't show actions or output of some command on terminal so it can be checked using I/O redirection
  * ```watch date``` is command to start clock
  * always restart service after changing config file of any services
  * to install new kernel
  ```
  rpm -ivh ftp-address-of-kernel-location    i - > install , u - > update
  ```
  * kernel installation process takes time so when this command is run ... wait until hostname is available to you by default ```ctrl C``` is prohibited in this action
  * to check kernel when reboot is done .... more then 2 lines will be seen for kernel
  * selinux is always updated only after reboot
  * after reboot selinux relabels all files and gets persistent

  ## Enable IP Forwarding
    * It is a feature of router with help of which ip of different series are able to communicate with each other
    * two lan cards can communicate with each other when its ON
    * run command
    ```
    sysctl -a | grep -i ip_fo
    ```
    * set net.ipv4.ip_forward = 1
    * to make ip forwarding permanent,open
    ```
    vim /etc/sysctl.conf
    ```
    * write at end of sysctl.conf file
    ```
    net.ipv4.ip_forward = 1
    ```
    * to load new settings - > reads the sysctl.conf file and updates
    ```
    sysctl -p
    ```
    * 0 - > Disable    1 - > Enable
    * to set it temporarily
    ```
    sysctl net.ipv4.ip_forward = 1
    ```
  ## Archive
    * for gzip  --z  --gz
    ```
    tar -cvzf file.tar.gz file-to-make-tar
    ```
    * for bzip2
    ```
    tar -cjvf file.tar.bz2 folder-name
    ```
    * for xz
    ```
    tar -cJvf file.tar.xz folder-name
    ```
    * to decompress files elsewhere, copy the tar in that directory and decompress it by
    ```
    tar -xvf tar-name
    ```
    * to decompress at certain path
    ```
    tar -xvf tar-name -C path-name
    ```

  ## VDO -> Virtual Data Optimizer
    * Minimum space requires = 15 to 20 GB
    * maintins the copy of two or more copies
    * the virtual size remains same and not increases even if same file is copied in the same folde again and again
    * it is a optimizer and maintains if data is not duplicated
    * for repo  requires
    ```
    baseurl=AppStream and BaseOS
    ```
    * repo link will be provided by the examiner
    * for installation
    ```
    yum install vdo kmod-kvdo
    ```
    * it is not a service
    * to create a vdo
    ```
    vdo --create --name=vdo1 --device=/dev/vda --vdoLogicalSize=50G
    ```
    * logical size can be greater then actual block device
    * it is an dev mapper technology device <b>DM</b>
    * to get information about vdo device
    ```
    vdo status --name=particular-vdo-name
    ```
    * to get all vdo devices list
    ```
    vdo status
    ```
    * to get list of vdo devices, uses 4GB for meta-data
    ```
    vdostats --human-readable
    ```
    * saving % denotes the amount of duplicated data
    * to format
    ```
    mkfs.xfs /dev/mapper/vdo1
    ```
