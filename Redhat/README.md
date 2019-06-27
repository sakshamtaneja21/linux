

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
