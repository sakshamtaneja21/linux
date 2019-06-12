# DAY4  CLOUD TECHNOLOGY AWS

## Notes ~ :
  * 75% traffic over network is passed through amazon
  * AWS is used in : Raspberry Pi , Robot Automation , ML
  * To use cloud use aws.amazon.com portal and select mumbai (country) #because its least costly
  * AWS uses AMI instead of ISO image to use OS without installing
  * AWS does not support MAC
  * AWS uses RDP (Remote Desktop Protocol) to access Windows from different location
      [client] - - > (Internet) - - > [Windows at Server side]
  * AWS uses SSH(Secure Shell) to connect with LINUX
      [Client] - - (SSH) - [Internet]- - > [ LINUX ]
  * EC2(Elastic Compute Cloud) - > used when need to use an OS
  * Red Hat uses Remote Desktop and command $ ssh -i key-file-path user-name@IP   #to run cloud on local machine
  * In Windows,Press Windows key + r - > mstsc (Opens remote desktop connection) or Use putty
  * Ubuntu uses Remote Viewer to run cloud on local machine
  * putty understands only .ppk extension
  * puttygen converts file with .pem extension to .ppk extension
    [Local System] - > (SSH) - > [AWS]
  * SSH is more secured then RDP
  * putty is a SSH client software
  * LINUX / OS is target SSH Server
  * Terminal is also a kind of SSH client server like putty
  * Users information with their power (UID range) is stored in /etc/passwd
  * AWS (Amazon Web Services)
* ECU (Elastic Container/Computer Unit)
    *   Computing resources and Memory required for the instance
* AMI (Amazon Machine Image) 
    *  Operating system Image which we dont need to install amazon will set it up automatically you will be getting the desktop directly without installation
* EBS (Elastic Block Storage)
    *   Storage Mechanism Scalable depending upon the requirements.
* RDP (Remote Desktop Protocol)
    *   This protocol will be used to access the windows machine.
* SSH (Secure Shell)
    *   This protocol will be used to connect the linux machine.
* EC2 (Elastic Compute Cloud)
    *   It is the collection of the above technologies.
    *   EC2 is a unique word which can be used in every programming language to connect with instances.

  
    
## LINUX Commands ~ :
  * $ chmod 400 file-name.extension       # Secures the file from public
  * $ ssh user-name@IP                    # To connect to IP of different instance
  * $ ssh -i key-path user-name@IP        # red hat command to connect to cloud instance
  * $ sudo -i                             # switch user to root without password when connected to cloud instance
  * $ passwd user-name                    # give password to a user
  * $ userdel -r user-name                # removes user, -r removes all data stored by user being removed
  * $ adduser user-name                   # add user in ubuntu OS
  * $ id -u                               # shows the id of user
## CLOUD VS Local Machine ~ :
  ### Cloud
    1. AWS has ECU(Elasting Computing Unit) which gives RAM & CPU
    2. AWS has EBS(Elastic Block Storage,which is changeable hard-disk size)
    3. AWS uses AMI(Amazon Machine Image) makes image of OS which has no need to be installed
    4. Username and Password are set automatically in machine
  
  ### Local Machine
    1. Requires RAM & CPU
    2. Requires Hard Disk
    3. Install Image from ISO/CD/DVD form
    4. Username and Password are set manually
    
## Selecting and Running an Instance ~ :
  * VM in AWS is called Instance
  * Select Services - > Compute - > EC2
  * Select free instance
  * Click Next for configuration
  * No of instance = 1 , Storage = 30 GB
  * after storage skip the tasl
  * select Security group - > Source - > My IP
  * Finally Launch
  * Create  new key pair , name-you-write-is-file-name
  * Download File in a safe place
  * Right Click Instance - > Window Password - > Upload Downloaded File - > Public DNS == IP Address
  * After use, Right Click Instance - > shutdown
  
## Connect Using Putty in windows ~ :
  1. Install putty and puttygen
  2. Convert/Decrypt Key - file for password by :
    * open puttygen
    * load file (key-file.pem)
    * save private key (key-file.ppk)
    * type of key to generate RSA
  3. Open putty and write IP to connect to
  4. Select SSH [ + ] - > click on Auth - > Load ppk file
  
## Authentication Powers of User
  1. In Windows, a user with UID = 500 has all power to operate in OS
  2. In Red-Hat, a user with UID = 0 has all power to operate in OS
  3. In LINUX, a user with UID range b/w 1000-6000 is Normal User
               a user with UID range b/w 60001 - 65535 and 1-999 is System User
              
## Types of Users~ :
  * Admin
  * Normal 
  * System (made by root to complete all sub-tasks like system shutdown, open application, run printer etc)
  
  
  
## TASK
  1. WAP that runs different commands each after some delay
  2. Make user in windows using command line
  3. Make a new user and make it root then make sure new-user has no access to change root permissions from being admin
  4. More then 1 user to write in same file
