# DAY 11

## Notes ~ :
  * systemctl is a command not supported in docker-containers
  * all the processes are present in systemd command which is the parent process for all
  * To run different containers directly through public ip , provide each conatiner with different port no so that each user can be fowarded based on combination ip and port to respected containers
  * .png format is not supported in ubuntu, it supports .svg
  * Network Web injection


## Linux Commands
  * $ kill -s STOP 'pidof firefox'  # used to send a process of firefoox in pause state
  * $ kill -s CONT 'pidof firefox' # it will resume the state of firefoox
  * $ docker run -itd docker-image process -name # d - > dettach, run the container but user doesn't login to container instead container moves to background
  * $ docker stop container-id # to stop a running containers




## Create a Docker Image
  * to do so we use Docker File
  * change a pre-existing image and save it with new name
  * create a empty directory
  * place evrything you wish in your new image in that directory
  * Create a file with name Dockerfile
  ```
  FROM - > checks for file in local system and if not present pull from DOCKER HUB

  RUN - > run a specific command you wish to run after entering the container

  COPY - > copy the files present in the directory to the image of docker being created

  EXPOSE - > Port no to activate in docker image being created

  ENTRYPOINT - > Which process to initiate by default for any new Image, it can not be replaced

  CMD - >Which process to initiate by default for any new Image, it can be replaced
  ```
  * run command to create docker Image
  ```
  $ docker build -t "image-name" directory-name

  ```
  * launch a container with port forwarding , run Command
  ```
  $ docker run -itd --name docker-container-name -p xxxx:80 docker-image-name

  ```

   -p stands for Port and xxxx is port no added to inbound in security


    
    
*   Today we will learn how to create our own docker image for our own purpose.
*   There are lot of ways to create your own docker image
*   ```Docker file``` is one of the way
    *   Step 1 Use the image as a container
    *   Install all the required stuff and save the changes.

## Create your own image
*   Create a empty directory with the image name
*   Create some files you want to add in your image.
*   Create a file called ```Dockerfile```.
*   This is base image where we want some changes
*    FROM Checks images in local system if not present then it will pull it from Docker hub
```
FROM fedora
```
* MAINTAINER means information about image developer
```
MAINTAINER akshaybengani@gmail.com
```
* Launch a container and do the changes
```
RUN yum install httpd -y
RUN yum install ip -y
RUN yum install iputils -y
```
* This will copy the data from your source OS to the container
```
COPY index.html /var/www/html
```
* EXPOSE keyword is used to assign the port number and activate it
```
EXPOSE 80
```
*   The container dont support ```systemctl``` or ```systemd```.
*   ```systemctl``` is the parent process of 
```
[root@ip-172-31-9-238 Akshay]# pstree
systemd─┬─NetworkManager─┬─dhclient
        │                └─2*[{NetworkManager}]
        |
```
*  It is the by default process of container.
* Alternative way of starting httpd service
```
ENTRYPOINT httpd -DFOREGROUND
```
*   Since we have mentioned entry point with something therefore we cannot run anything else in that.
*   So if you want to block your image to do only particular task then use ENTRYPOINT
*   So if you want to use image to open other programs then use CMD.
*   If you want container to continue started after its creation then use the argument ```-t```
```
docker run -itd --name cc fedora bash
```
*   ```d``` stands here for detach
*   To stop a container we have an option ```stop```
## Configure DNS for Container
*   We dont need to build a socket for port forwarding here.
*   There is an argument for assigning the port we need to forward in our base machine
*   ```-p``` is used  
```
docker run -itd --name web1 -p 1234:80 akshaybenganiweb
```
*   To build 50 containers with a sequence of ports.
```py
import os
for i in range(50):
    os.system("docker run -itd --name web"+i" -p 120"+i":80 akshaybenganiweb")
    
```
## Industry 4.0 Technologies
*   Devops
*   Blockchain
*   AI/Data Science

##  Devops
*   Developer (Technical Guy)
*   Operations (Non Developer Guy)
*   Automation
*   CI/CD
*   Containers
*   Microservices

### Automation
*   IAC (Infrastructure as a Code)
    * 1990's CF Engine in C
    * 2005 Puppet in Ruby
    * 2007 Chef in Ruby
    * 2010 Salt in Python
    * 2012 Ansible in Python
    * Juju, Teraform and many more
*   Teraform is used to automate cloud technologies like AWS, Azure, Google.
*   Ansible is used to automate Desktop operations specially linux.
## QrCode Task
*   To use a qrcode liberary we have a liberary in python called ```pyqrcode```
*   





# Task 
*   IP Username Password 
*   Programming language back propogation
