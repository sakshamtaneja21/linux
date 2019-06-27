# Day 16
## Big Data 
* large amount of data 
```
When we transfer/copy data from HD 1 to HD 2 then there is no role of  RAM and CPU in terms of storage.
```
* IO rate I/P O/P rate or Read and Write.

## Problems of BigData
* Storage (speed ,size)
* Process
* Business

```
Hadoop is a technology that solve all the problems related to big data.
```
Framework -->Platform 
### Hadoop
* Apacha Hadoop (open Source )
* Cloudera Hadoop
* Motoron Works Hadoop (paid)

### Apacha Hadoop 
* Version 1 
* Version 2 (work on this )
* Version 3 

```
 Hadoop is a Framework or Platform 
 ```
 * A component that stores the data called  HDFS ( Hadoop Distributed File System)
 * HDFS arch 
*  collect the data from user and transfer for further process.


#  Cloud Computing
*   Compute means combining computation capabilities of CPU and RAM.
*   The computation power we dont have physically but we have a virtual computation power
## Categories of Cloud Computing
1.  SAAS
    *   Software As A Service
    *   Running Softwares and all  
2.  STAAS
    *   Storage As A Service
3.  PAAS
    *   It will give a enviorment to use a specific program or something, example If we want to use JAVA only then it will give only computation power for that particular thing.
4.  IAAS
    *   Infrastructure As A Service
5.  DBAAS
    *   Database As A Service
6.  NAAS
    *   Network As A Service

## Major Cloud Providers
*   AWS
    *   60% Market Share
    *   Postpaid Money Model
    *   150+ Services.
*   Azure
*   Google
*   OpenStack
*   IBM
*   Rackspace

## AWS Basic Information about EC2 Cloud
*   Hardware
    *   A physical resource which is a combination of RAM, CPU, HDD and Networking Equipments.
*   Hypervisor
    *   A program or a software which provides a service to host multiple operating systems on free hardware resources.
    *   Example VMWARE or VirtualBox.
    *   Hypervisors are of Two Types
        *   Type 1 Bare Metel Hypervisors
        *   Type 2 Hosted Hypervisors like VMware or Virtualbox.
    *   Type 2 Hypervisors are dependent upon the base Operating system.
    *   Type 1 Hypervisors are installed directly on Hardware which dont need an operating system to run on.
    * There are a lot of companies which develop Hypervisors like VmWare which develop both the types of hypervisors.
    *   Citrix is the 2nd largest Hypervisor development company.
        *   Type 1 Hypervisor named as XEN Server
        *   Type 2 Hypervisor named as XEN
    *   Redhat is the 3rd largest Hypervisor Development company.
        *   Type 1 Hypervisor named as RHEVH
        *   Type 2 Hypervisor named as KVM
    *   Micorsoft is the 4th largest Hypervisor development company.
        *   Type 1 Hypervisor named as Hyper-V
        *   Type 2 Hypervisor named as VirtualPC
    *   Oracle is the 5th largest Hypervisor development company.
        *   Type 1 Hypervisor named as VM
        *   Type 2 Hypervisor named as VirtualBox
    *   In maximum cases we will be using Type 1 Hypervisors.
    *   AWS uses Citrix XEN Server
*   Racks | Clusturs | Data Centers | Region
    *   It is a collections of Motherboard(RAM and CPU) placed together in a group of stack.
    *   NOTE: It dosent contain any HDD or SSD in computation Racks.
    *  A physical place of combination of Racks is called a Clustur.
    *   Collection of thousands of Clusturs is called as Data Center
    *   Collection of Multiple Data Centers in a city is called as Region.
*   EC2 Basics
    *   AWS uses a name Availability Zone for Region
    *   The combination of RAM and CPU in AWS is called as ECU (Elastic Compute Unit)
    *   When we ask for Storage is gives from EBS(Elastic Block Storage)
    *   AMI (Amazon Machine Image) These are the operating system images which Amazon provide us.
    *   VPC (Virtual Private Cloud) It gives us Networking Interface and Firewall Configuration.
    *   Boot Straping in EC2 to plan something for automation like something installation or host a website or such.
## PHP Installation in AWS
*   To install web server we use
```
yum install httpd
systemctl start httpd
systemctl enable httpd
```
*   To install php and restart httpd you can use
```
yum install php
systemctl restart httpd
```
*   To change configuration files of httpd use.
```
vi /etc/httpd/conf/httpd.conf
```
*   To add your own virtual host add your ```IP Address``` and ```Host name``` in ```/etc/hosts``` file
```html
<virtualhost *:80>
documentroot /var/www/adhoc
servername adhoc.example.com
</virtualhost>
```
*   Add this at the end of the file.
*   Now add a Local DNS in your own system
```
[root@ip-172-31-44-37 adhoc]# cat /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost6 localhost6.localdomain6
13.233.92.233 adhoc.example.com
```
*   Now if you want to access in your actual system then add this same entry in windows host file also.
```
C:\Windows\System32\drivers\etc\hosts
```
*   Now add the entry in that file using administrator permissions via cmd -> Notepad
```
13.233.92.233 adhoc.example.com
```
*   Now you can access ```adhoc.example.com``` in your windows system also.

## Tasks
*   How many instance we can launch in a single shot in AWS 
*   What is Request Spot Instance
*   Can we change Subnet Availability Zone after instance Launch.


* Check the tasks details and recheck and do it properly
```
blu 751
home2 600
public_html group apache 2771  set UID
## Linux Commands
  * $ useradd -b /home2  # creates a user with home directory /home2
```
## Notes
  * at real time CPU and RAM can not be changed dynamically without closing the system
  * while launching instance you can add the details to be run at configure instance advanced section as bash commands and it will be run while starting the instance
  * Load Balancer - > distributes the traffic at different urls to be able to handle the traffic
  * On AWS load balancer is called as Elastic load balancer

## Elastic Load Balancer in AWS Cloud
  * From AWS we can use load balancer
  * create Load Balancer
  * they are of 3 types
    1. Classic (for all traffic )
    2. Network
    3. Application
  * Using Classic
  * Define load balancer name
  * Create new security group for ELB
  * configur health check ( most important setting of load balancer )
  * to check if a website is working properly, load balancer pings the ip of your website with http protocol to find index.html
  * Response Time out - > the timeout time in which the response is expected  
  * interval - > after how much time ELB pings to website index page
  * Unhealthy Threshhold - > how many times ELB will try to connect with index if he got no response
  * healthy Threshhold - > checks for no of times to check that your page is working
  * *** ITS NOT FREE ***
  * it checks for running instance to provide you working status
  * using its DNS testing ip


