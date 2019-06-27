# Day 15 Cloud Computing
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
    
    
## **AWS**
1. IAAS -> ec2 (ELastic Compute Cloud)

**Need to know in AWS for AWS Certification Exam:-**
* Hardware ->
    * A physical Resource which is a combination of RAM, CPU, HDD and Networking Equipments
* Hypervisor ->
    * A program or a software which provides a service to host multiple OS on the free h/w resources
    * VMM (Virtual Machine Manager) 
    * Divides the RAM and CPU not the HDD in the Racks
    * Ex -> VMware, Virtual Box
    * Types:-
        * Type 1 or Bare Metal
            * Installed directly on the Hardware which don't need an OS to run on.
            * Ex ->
                * ESXI -> VMWare
                * XEN Server -> Citrix -> Used by AWS
                * RHEVH -> Redhat
                * Hyper-V -> Microsoft
                * Virtual Box -> Oracle

        * Type 2 or Hosted Hypervisor
            * Levels:-
                * Hardware
                * OS
                * Hypervisor
                * OS
            * Ex -> 
                * VMWare/ VMP -> VMWare
                * XEN -> Citrix -> Used by AWS
                * KVM -> Redhat
                * Virtual PC-> Micrsoft
                * VM -> Oracle

* Racks
    * Includes only Mother Board in Racks
    * **NOTE:-** It doesn't contain any HDD or SSD in computation Racks.
    * Smallest unit is Hardware then Rack then Cluster the Data Center then all Data Centers includes in Region as said by Amazon.
    * And Amazon said Data Center as Availability Zone
* Data Center
    * Atleast 2 Data Centers are placed in a Region by Amazon
    * Regions are basically the physical space (City or a Country)

* In Amazon, we say combination of RAM and CPU as ECU (Elastic Compute Unit)
* And for HDD we take it from EBS (Elastic Block Storage)
* And for OS Image it is AMI (Amazon Machine Images)
* And for Network it is VPC (Virtual Private Cloud)

### [Advanced Details] **Boot Straping:-**
* Does job whenever we launch an instance like create a user and set a password



## Tasks
* How much Maximum we can choose instances and why
Spot Instances
* Can we change Subnet Avaliabilty zone after launch and can we change it before launch
* What are the shutdown behaviours :- Stop, Terminate
* What is Tenancy
* T2/T3 Unlimited -> for using internet having very fast speed

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

# Machine Learning | Data Science
*   Data Science is distinguished in two forms
    *   Big Data
    *   Machine Learning
*   Big Data is a field where we store and manage huge amounts of data for storage and its processing.
*   Machine Learning is applying mathematical calculations or processing the data generated by big Data platforms use them and extract useful information form it.
*   Deep learning is a technology which is used to solve complex problems which Machine Learning cannot solve or handle.
*   Its more over your custom designed Machine Learning model.




## NumPy Numerical Python
*   Tensorflow is the advanced version of NumPy.
*   The data would be atleast in two dimensions and can be in 100's of Dimensions.
*   To install numpy we use
```   
pip install numpy
```
*   To use numpy we import it with a name to short the module name
```py
import numpy as np
```
*   We can create array in ```numpy``` by calling a function only.
```py
a = np.array([1,2,45,35,45])
```
*   We can print an array just by using the variable name or we can print a specific value also.
```py
print(a)
print(a[0])
[ 2  7  1 99  4]
2
```
*   We can also perform operations on arrays
```
a*2
a**2
a+b
```
*   We can create multidimensional arrays just by adding list brackets inside the list.
```
x = np.array([[2,5,8],[3,6,1]])
[[2 5 8]
 [3 6 1]]
```
*   Now we have a full table and now we can access it by using matrix ```row``` x ```column```
*   When we use ```x+7``` it basically adds ```7``` in every element of the array.
*   If I want a specific row just use the 1st row index in array.
```
x[0]
[2 5 8]
```
*   We can get the shape size or matrix dimensions by calling the shape() function with the matrix variable.
```
x.shape()
```
*   To get specific number of rows we use slicing tool
```
z[0:5]
```
