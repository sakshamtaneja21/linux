# **STAAS (Storage As a Service)**

## Storage Cloud:-
Categories:-
* ```Object Storage:-``` Ex:- Google Drive, Drop Box, OneDrive
    * It cannot be formatted in another format type like in NTFS or XFS 
    * More Examples:-
        * AWS :- S3
        * Azure :- Blob
        * OpenStack :- Swift
* ```Block Storage:-``` 
    * Blank Harddisk or Empty or Raw
    * Examples:-
        * AWS :- EBS
        * Azure :- Azure Disk
        * OpenStack :- Cinder

### **EBS (Elastic Block Storage)**

* ```CIFS``` (Common Internet File System) is same like NFS (Network File System) but CIFS is operatable in multiple OS
* ```ScSi``` (Small Computer System Interface) protocol is used for detecting the attached HDD to the same OS.
* ```iSCSI``` (Internet Small Computer System Interface) protocol is used for making another system or OS feel that the same HDD is detected in that system.
* ```FCOE``` (Fiber Channel Over Ethernet) protocol has same usage as IScSi.
* EBS used iSCSI in backend.


---
Pinging self machine
```
ansible localhost -m ping

O/P:-
localhost | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```

make a dir in /etc/ansible for playbooks by the name playbooks

Three Sections in Playbook:
* Target
* Variable 
* Tasks

Checking the syntax of playbook
```
ansible-playbook --syntax-check list_hdd.yml
```
* name keyword is just like a comment
* register keyword is used for storing the output of upper line command output
* debug keyword  is used for printing

```list_hdd.yml```
```
---
 - hosts: localhost
   tasks:
    - name: listing all attached hard disk in local system
      command: lsblk
      register: x

    - name: printing value of x
      debug: var=x
```

Minimum and Maximum Limit of EBS Storage is 1GB to 16TB

* ```Snapshot in EBS ``` is a backup at the current time what folder and files are containing and includes all the information just like metadata.
    * We can create a new EBS by that same Snapshot and new EBS can also have more storage and availabilty zone can also be different, that's why it is called **Elastic Block Storage**.


**EBS [Exam Interview Tips]**

* Block Storage
* Min:- 1 GiB 
    * Difference b/w GB and GiB is 
        * 1GB = 1000 MB and 1GiB = 1024 MiB
* Max:- 16384 GiB
* Can we attach one EBS in more than one EC2 ->  According to amazon, NO so answer is **NO** but we can do it.
* Can we take more than 16 GB in one EBS -> Go to Support section for that
* Encryption in EBS -> Without encryption, Amazon internal employee can see the data if he/she can. But with encryption, a key will get generated for the whole HDD which is only accessible to the user only.
Keys are generated using KMS (Key Management System)

---

For setting up the aws login using Ansible by the secret keys
```
aws configure
```

For aws command not found in Redhat 7.5:-

* python2-pip rpm (Search on google and download rpm file and download the rpm using wget in redhat 7.5)

Then
```
pip install boto3 awscli
```



