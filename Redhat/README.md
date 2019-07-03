

## Redhat Traininig

# **Redhat**
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
