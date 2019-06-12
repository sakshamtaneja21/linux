# Day 5

## Notes
* Unix is a type of linux. C language is used to developed most of the part of a kernel.
* There are 3 popular kernals
  *   NT
  *   Linux
  *   Darwin
* Telnet is used for remote terminal connection services same as ssh
* Hardware provides command interpreter environment
* In every OS, whenever a new user is created it is always added in a group by self where the name of group is the name of user itself

## LINUX Commands
```
* $ lpr file-name                  # used to print files
* $ ls -ld                         # shows inode table of directory itself
* $ ls -ild                        # shows inode number of directory
* $ ls -l                          # shows inode table of files inside a directory
* $ chgrp grp-name                 # create a group
* $ chgrp grp-name directory-path  # changes creators name to group name
* $ chown owner-name new-name      # change owner name
* $ useradd -G grp-name user-name  # add a user to existing group
* $ usermod grp-name user-name  # add a user to existing group if user already exists
```
## Editors
* GUI based ~ Notepad and gedit(graphical editor)
* CLI based ~ vi , vim , pico , nano
  (vim is an advanced version of vi)

## Google Search Queries
*   Search for diff in unix and linux
*   Basic Liunx Questions   

## VIM Tips
*   Delete a single character use ```x```
*   Copy multiple lines at one ``yy10p``

## AWS Tips
*   You cannot use same pem file in different regions
*   You can give custom names for your instances

## File system security
*   A normal user saves its data in a directory, overall save data in file.
*   File System Security is the main topic in RedHat exam.
*   A normal user when come accross to a file he/she performs some operations.
    *   Read
    *   Write
    *   Execute
*   We only give execute permission when there is a code of some programming language and we need to run that, Else we dont need to give execution file permission
    * You can give execution permission by ```+x``` with ```chmod``` and to remove a file execution permission we use ```-x```.
*   The file execution permission is given to compiler.
*   Inode Table is a file which index the user permissions to specific files in detail.
*   Inode table is relatable to Index and Content page of a book.
*   Directory is also a kind of execution program need to be opened thus requires execution permission

### File Permission Example
*   Create directory in ```/```.
*   Create file in ```/```.
*   When we use ```ls -l``` we get some output like this
```
-rw-r--r-- 1 root root 15 Jun  7 10:34 abc.txt
```
*   The first Character shows that this is a directory or a regular file.
*   There are total 7 types of files in linux.
*   Directory is also a file and part of those 7 types of files.
*   After the -- combination we have ```root``` mentioned in the example.
*   The 1st username is the ```owner``` of the file.
*   Owner is not neccessory that he is the creator of the file.
    *   For example you have purchased a bike but you are not the creator of the file you are owner of the file.
    *   And when we resell the bike owner changes.
```
---- --- ---
--rw r-- r--
Owner Group Others.
```
*   There are three categories Owner Group and Others.
*   According to Inode table it is defined that there are 3 type of users of the file.
*   A directory also have its own Inode table index to display that use ```ls -ld /etc```
*   The number written after owner and others is the size of the file.
```
rwx
read write execute
This is given to all the 3 different users
Owner Group Others
```
*   The number written before owner name is called as number of links.
    *   Number of links means that how many ways we can use the file or directory kind of shortcuts or such.
```
d           rwx    r-x     r-x      1               Jun 7  10:44    abc.txt

directory   Owner  Group   Others   No of links     Date Modified   File Name
```
*   When we create a user it automatically creates a group of himself.
*   First the group will be created and then user will add himself automatically.
*   For example to give Administrator permissions in windows to a user we add the user in Administrator Group.
*   Since the owner and the group is same always because by default user is the part of his own group as such it always gives same name as owner and group.
*   To give permission to everyone at once we can use <br>```chmod urwx,g+r,o+rx```
*   Benefit of making group is when we need same permissions to selective people working on a specific directory or such we use groups.
*   To create group we use ```groupadd tech```
*   To change group we use ```chgroup```
*   To change owner we use ```chowner```
*   Example to add someone in a group
*   To add a user with specifying group use<br>
```useradd -G tech priti```
* To add a user we use<br>
```useradd grijesh```
* To modify a user to add him in that group<br>
```usermod -G tech grijesh```
*   When common group of users have same power and they modify data or delete data of others and they should not delete that we use ```stickybit```.
* There is a directory in linux architecture where all the users can write data in that and other users can just read the data. ```/tmp```
* ```/tmp``` is a directory where stickybit is applied.
*   To add a stickybit in the project we use ```+t```.
```
chmod +t /project
```
*   When we see ```t``` at the end of permission ```--- --- ---``` then it is sticky bit.
*   To set default group name at the time of creation of data by any group user we can use ```sgid```.
*   To add sgid in a group use this command.
```
chmod g+s /project
```
## Types of Files in LINUX
  There are 7 types of files in LINUX OS - :
    1. Regular files (-)
    2. Directory files (d)
    3. Block files (b)
    4. Character device files (c)
    5. Named pipe file or just a pipe file (p)
    6. Symbolic link file (l)
    7. Socket file (s)

## Installation and Setup of Jupyter
*   Instance Launch
*   putty / terminal -- ssh --firewall --aws
*   python3 install pip3 install
*   apt-get install python python3 python-pip python3-pip
*   pip3 install jupyter notebook
*   jupyter-notebook --no-browser --ip=0.0.0.0 --port=xxxx &>/dev/null &   # where xxxx represents any 8000 ~ 9000 number
*   jupyter-notebook list
    *   This will give us the tokenID
* Copy the URL into web browser and change the 0.0.0.0 ip to your instance ip

## Crontab for Job Scheduling
* Crontab is a program which allows us a background service which will execute something at a partitcular point of time, without any user interaction at that point of time.
*   To use crontab we use
```
crontab -e
```
* ```-e``` will open the vim text editor and we mention the date and time format and then the command location and operation.
* Crontab date and time format is customizable like if we want to execute something repeatedly multiple times or everytime after a period of time we can use ```*``` for that
* Need to add the details of Syntax format in vim editor opened by below command
imp - > */5 * * * *     # it runs a command after every 5 minute

Syntax :
  minute hour date month day path-of-command where-to-run-command

## GUI Configuration for Ubuntu
  1. open putty
  2. Run the following commands ~:
    ```
    * sudo apt update &&  sudo apt upgrade
    * sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
    * sudo /etc/init.d/ssh restart
    * sudo passwd ubuntu  #set a Password
    * sudo apt install xrdp xfce4 xfce4-goodies tightvncserver
    * echo xfce4-session> /home/ubuntu/.xsession
    * sudo cp /home/ubuntu/.xsession /etc/skel
    * sudo sed -i '0,/-1/s//ask-1/' /etc/xrdp/xrdp.ini
    * sudo service xrdp restart
    ```
  3. sudo reboot or restart putty
  4. open SSH -> tunnel
  5. Set
    * source port = 8888
    * Destination = Private ip address:3389
    * Click on added    # local port 8888 goes to 3389
  6. Start Putty
  7. $ netstat -antp
  8. open remote desktop viewer
  9. connect to IP given at top in command 7
  10. Yes to error occurs
  11. Set
    * username = ubuntu
    * password - ubuntu
  12. use default Configuration and its all done


## tasks 
* Write code in python to connect to SSH without putty
* How to remove read and write permission from a file or directory for root or admin user
* List how many people are in a group find that list
* How to add multiple users in a group at once

