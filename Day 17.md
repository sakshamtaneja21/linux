# Day 17 



## Branching @ Github
  * Make branches for different categories within ML-Specialisation repo
    1. Data Processing
    2. Computer Vision
    3. Supervised ML
    4. NLP
    5. Neural Network
    6. Deep Learning
  * By default every repo is initialised with a master branch
  * every file in master branch or every change in master branch is shown in all branches


## Git Commands
  * git branch  - > Shows the no of branches available in repo
  * git checkout -b branch-name -> used to make new branch and we switch into it
  * git reset --hard commit-sequence-given-in-log -> used to change the commit state
  * git push origin branch-name - > push the committed data into given branch name
  * git checkout branch-name -> change the branch being used
  * git branch -a - > shows new branches added on repo but didn't recieved on cloning
  
   **commit only after coming back to normal time**


## Notes
  * to attach new volume in Virtual Box at run time without restarting
    we use virtIO in storage setting
  * At AWS , we can attach new volumes without rebooting or stopping the system
  * $ partprobe -> to resync all HDD in
  * mount -a -> it runs the fstab file again and mounts the HDD if not mounted
  * to permit root login on AWS , open ```/etc/ssh/sshd_config``` file and set ```permitrootlogin``` to ```yes```
  * ```lsblk --output=uuid device-name``` it gives uuid of specific HDD

## SSH
  * ssh ip-address  # it logins on other system with same user you are running this command as
  * ssh stands for Secure Shell
  * ssh -X root@ip -> used to give graphical interface to virtual box

## LVM
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


# **Ansible**

cli :- Command Line Interface
```
sudo pip3 install awscli
```
for connectivity
```
sudo pip3 install boto3
```
```
pip install boto
```
for configure for credentials
```
aws configure

AWS Access Key ID [None]: _KEY_
AWS Secret Access Key [None]: _SECRET_KEY_
Default region name [None]: ap-south-1b
Default output format [None]: json
```
Default Output format types :- text, json, table

```
vim launchinstances.yml
```
```launchinstances.yml```
```
---
 - hosts: localhost
   tasks:
    - ec2:
       image: ami-5b673c34
       region: ap-south-1
       group: naman
       key_name: ansible
       instance_type: t2.micro
       wait: no
       count: 1x
```

lists all the modules

```
ansible-doc -l
```
shows the working of ec2
```
ansible-doc ec2
```
in this working of key pairs is shown
```
aws ec2 describe-key-pairs
```
```
aws ec2 help
```

opening playbook file
```
ansible-playbook launchinstance.yml
```


### **Delete Instance**

```deleteinstance.yml```
```
---
 - hosts: localhost
   tasks:
    - ec2:
       instance_ids: i-0fbcb1e1d72817184
       state: stopped
       region: ap-south-1

# Data Engineering
  * A classifier requires an accurate data to use its processing algorithm
  * pre-processing of data before applying ML is know as Data Engineering
  * tasks in Data Engineering - >
    1. Clean
    2. Recycle
    3. Auto Fill
  * pandas is similar to SQL and basically creates its own structure called DataFrame
  * Imputer - > replacing missing numerical value with relevant data is done with the help of imputer
  * Data Processing have a branch called Dummy variable
  * Dummy cariable works in a way that it encodes the string into a array format like [1,0,0] where 1 the value in row 1 is flagged as 1 and other as 0 and length of array is equal to number of different values
  * To calculate distance KNN uses distance formula that is
  ```
  root((x1-x2) + (y1-y2) + (z1-z2))
  ```
  * Feature Scaling - > it is the method of data where we convert features in the range of each other
  e.g., 1 feature has values (27,38,59) and other one has values (10000,239999,38888) so bring both features in similar range this method is applied
  * Imputing is a part of Data Mining & Engineering
